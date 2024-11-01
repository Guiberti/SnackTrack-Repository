// Função para obter e exibir os dados da empresa
async function fetchCompanyData() {
    try {
        const response = await fetch('http://localhost:8080/api/company');
        const data = await response.json();
        document.getElementById('company-details').innerHTML = `
            <strong>Nome:</strong> ${data.nome} <br>
            <strong>CNPJ:</strong> ${data.cnpj} <br>
            <strong>Endereço:</strong> ${data.endereco}
        `;
    } catch (error) {
        console.error("Erro ao carregar dados da empresa:", error);
    }
}

// Função para obter e exibir o estoque
async function fetchStockData() {
    try {
        const response = await fetch('http://localhost:8080/api/stock');
        const items = await response.json();
        const stockList = document.getElementById('stock-list');
        stockList.innerHTML = ''; // Limpa lista anterior
        items.forEach(item => {
            const listItem = document.createElement('li');
            listItem.innerHTML = `
                <strong>ID:</strong> ${item.id} <br>
                <strong>Nome:</strong> ${item.nome} <br>
                <strong>Quantidade:</strong> ${item.quantidade} <br>
                <strong>Validade:</strong> ${new Date(item.dataValidade).toLocaleDateString()}
            `;
            stockList.appendChild(listItem);
        });
    } catch (error) {
        console.error("Erro ao carregar dados do estoque:", error);
    }
}

// Função para obter e exibir os dados de produção
async function fetchProductionData() {
    try {
        const response = await fetch('http://localhost:8080/api/production');
        const recipes = await response.json();
        const productionList = document.getElementById('production-list');
        productionList.innerHTML = ''; // Limpa lista anterior
        recipes.forEach(recipe => {
            const listItem = document.createElement('li');
            listItem.innerHTML = `
                <strong>Nome:</strong> ${recipe.nome} <br>
                <strong>Tempo de Preparo:</strong> ${recipe.tempoDePreparo} <br>
                <strong>Custo:</strong> R$ ${recipe.custo.toFixed(2)}
            `;
            productionList.appendChild(listItem);
        });
    } catch (error) {
        console.error("Erro ao carregar dados de produção:", error);
    }
}

// Carrega todas as informações ao abrir a página
document.addEventListener("DOMContentLoaded", () => {
    fetchCompanyData();
    fetchStockData();
    fetchProductionData();
});

function showScreen(screenId) {
    // Oculta todas as telas
    document.querySelectorAll('.container').forEach((container) => {
      container.classList.add('hidden');
    });
    
    // Mostra a tela selecionada
    document.getElementById(screenId).classList.remove('hidden');
  }
  
  function exampleFunction() {
    alert("Interatividade da tela!");
  }
  
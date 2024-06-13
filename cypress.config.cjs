// Importando a função defineConfig do pacote cypress
// Requer a função defineConfig do pacote cypress
const { defineConfig } = require('cypress');

// Exporta a configuração do Cypress
module.exports = defineConfig({
  // Configurações específicas para os testes de ponta a ponta (e2e)
  chromeWebSecurity: false,
  e2e: {
    // URL base para os testes de ponta a ponta
    baseUrl: 'https://notes-serverless-app.com/signup',
    defaultCommandTimeout: 15000,
    env: {
      viewportWidthBreakpoint: 768,
    },
    
    // Configuração dos eventos do Node (opcional)
    setupNodeEvents(on, config) {
      // implemente os ouvintes de eventos do Node aqui, se necessário
    },
  },
});

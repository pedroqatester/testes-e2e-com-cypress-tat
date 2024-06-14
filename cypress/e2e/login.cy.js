/* eslint-disable linebreak-style */
/// <reference path="../support/commands.d.ts" />

// eslint-disable-next-line linebreak-style
describe('Login', () => {
//  entra na tela de login
  it('sucesso na funcionalidade de login', () => {
    cy.guiLogin()
    // Verificando o sucesso do login na Pagina home YOUR NOTES
    cy.contains('h1', 'Your Notes').should('be.visible')

  })
})
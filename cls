warning: in the working copy of 'cypress.config.cjs', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of 'package.json', LF will be replaced by CRLF the next time Git touches it
[1mdiff --git a/.github/workflows/ci.yml b/.github/workflows/ci.yml[m
[1mindex d027b8c..d2d0e36 100644[m
[1m--- a/.github/workflows/ci.yml[m
[1m+++ b/.github/workflows/ci.yml[m
[36m@@ -30,18 +30,21 @@[m [mjobs:[m
           CYPRESS_USER_PASSWORD: ${{ secrets.CYPRESS_USER_PASSWORD }}[m
           CYPRESS_MAILOSAUR_SERVER_ID: ${{ secrets.CYPRESS_MAILOSAUR_SERVER_ID }}[m
           CYPRESS_MAILOSAUR_API_KEY: ${{ secrets.CYPRESS_MAILOSAUR_API_KEY }}[m
[32m+[m[32m          CYPRESS_RECORD_KEY: ${{ secrets.CYPRESS_RECORD_KEY }}[m
[32m+[m
         with:[m
[31m-          command: npm test[m
[31m-  cypress-tests-tablet:[m
[31m-    needs: eslint[m
[31m-    runs-on: ubuntu-22.04[m
[31m-    steps:[m
[31m-      - name: Checkout[m
[31m-        uses: actions/checkout@v3[m
[31m-      - name: Run end-to-end tests on tablet viewport 🧪[m
[31m-        uses: cypress-io/github-action@v5[m
[31m-        env:[m
[31m-          CYPRESS_USER_EMAIL: ${{ secrets.CYPRESS_USER_EMAIL }}[m
[31m-          CYPRESS_USER_PASSWORD: ${{ secrets.CYPRESS_USER_PASSWORD }}[m
[31m-        with:[m
[31m-          command: npm run test:tablet[m
[32m+[m[32m          command: npm run test:cloud[m
[32m+[m[32m  # cypress-tests-tablet:[m
[32m+[m[32m  #   needs: eslint[m
[32m+[m[32m  #   runs-on: ubuntu-22.04[m
[32m+[m[32m  #   steps:[m
[32m+[m[32m  #     - name: Checkout[m
[32m+[m[32m  #       uses: actions/checkout@v3[m
[32m+[m[32m  #     - name: Run end-to-end tests on tablet viewport 🧪[m
[32m+[m[32m  #       uses: cypress-io/github-action@v5[m
[32m+[m[32m  #       env:[m
[32m+[m[32m  #         CYPRESS_USER_EMAIL: ${{ secrets.CYPRESS_USER_EMAIL }}[m
[32m+[m[32m  #         CYPRESS_USER_PASSWORD: ${{ secrets.CYPRESS_USER_PASSWORD }}[m
[32m+[m[32m  #           CYPRESS_RECORD_KEY: ${{ secrets.CYPRESS_RECORD_KEY }}[m
[32m+[m[32m  # #       with:[m
[32m+[m[32m  # #         command: npm run test:tablet:cloud[m
[1mdiff --git a/cypress.config.cjs b/cypress.config.cjs[m
[1mindex 7ba85c3..a45936a 100644[m
[1m--- a/cypress.config.cjs[m
[1m+++ b/cypress.config.cjs[m
[36m@@ -13,10 +13,6 @@[m [mmodule.exports = defineConfig({[m
     env: {[m
       viewportWidthBreakpoint: 768,[m
     },[m
[31m-    [m
[31m-    // Configuração dos eventos do Node (opcional)[m
[31m-    setupNodeEvents(on, config) {[m
[31m-      // implemente os ouvintes de eventos do Node aqui, se necessário[m
[31m-    },[m
   },[m
[32m+[m[32m  projectId: 'kygu1n',[m
 });[m
[1mdiff --git a/package.json b/package.json[m
[1mindex 3985f7c..756bf8e 100644[m
[1m--- a/package.json[m
[1m+++ b/package.json[m
[36m@@ -10,7 +10,11 @@[m
     "cy:open": "cypress open",[m
     "cy:open:tablet": "cypress open --config viewportWidth=767,viewportHeight=480",[m
     "test": "cypress run",[m
[31m-    "test:tablet": "cypress run --config viewportWidth=767,viewportHeight=480 --spec cypress/e2e/authenticated.cy.js"[m
[32m+[m[32m    "test:tablet": "cypress run --config viewportWidth=767,viewportHeight=480 --spec cypress/e2e/authenticated.cy.js",[m
[32m+[m[32m    "test:cloud": "cypress run --record --tag 'desktop'",[m
[32m+[m[32m    "test:tablet:cloud": "cypress run --record --tag 'tablet' --config viewportWidth=767,viewportHeight=480 --spec cypress/e2e/authenticated.cy.js"[m
[32m+[m[41m    [m
[32m+[m[41m    [m
 [m
   },[m
   "keywords": [],[m

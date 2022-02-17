***Settings***
Library     SeleniumLibrary

***Variables***

${url}      https://www.imdb.com/?ref_=nv_home

***Test Cases***
Should See Page Title
    Open Browser        ${url}    chrome
    Title Should Be     IMDb: Ratings, Reviews, and Where to Watch the Best Movies & TV Shows

Digite love no campo de busca
   Input text                   id=suggestion-search                         love
   Sleep                        2s
   Click Element                id=suggestion-search-button
   Sleep                        2s
   Element Should Contain       xpath=//div[@class='findSection']             Love


Digite palavra composta no campo de busca
   Input text                   id=suggestion-search                         Old Love
   Sleep                        2s
   Click Element                id=suggestion-search-button
   Sleep                        2s
   Element Should Contain       xpath=//div[@class='findSection']             Old Love

Buscando por um Título inesistente
   Input text                   id=suggestion-search                         Careca Cabeludo
   Sleep                        2s
   Click Element                id=suggestion-search-button
   Sleep                        2s
   Element Should Contain       xpath=//div[@class='article']                No results found for "Careca Cabeludo"

Buscando por um Título em branco
   Click Element                id=suggestion-search-button
   Sleep                        2s
   Element Should Contain       xpath=//div[@class='article']                Search IMDb by typing a word or phrase in the search box at the top of this page

Buscando por Celebridades
    Click Element                xpath://*[@id='suggestion-search-container']/form/div/div/label/div
    Sleep                        2s
    Click Element                xpath://*[@class='ipc-menu__items mdc-menu__items']/span/ul/a[4]
    Sleep                        2s
    Input text                   id=suggestion-search                                                 Denzel Washington
    Sleep                        2s
    Click Element                id=suggestion-search-button
    Sleep                        2s
    Element Should Contain       xpath=//div[@class='article']                                        Denzel Washington

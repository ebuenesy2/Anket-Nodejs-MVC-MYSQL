const indexController = require("../controllers/indexController.js");  //! Controller - Anasayfa
const authController = require("../controllers/authController.js"); //! Controller - Kullanıcı
const surveyController = require("../controllers/surveyController.js"); //! Controller - Anket
const surveyOptionsController = require("../controllers/surveyOptionsController.js"); //! Controller - Anket Seçenekler
const surveyVoteController = require("../controllers/surveyVoteController.js"); //! Controller - Anket Oylama

const routes=[
    { method: 'GET',  url: '/', handler:indexController.home },  //! Get
    { method: 'GET',  url: '/getId/:id/getPage/:page', handler:indexController.homeGetUrl }, //! Get Url
    { method: 'GET',  url: '/params', handler:indexController.homeParams }, //! Get Params  [?]
    { method: 'GET',  url: '/env', handler:indexController.homeEnv },  //! Get Env
    { method: 'GET',  url: '/version', handler:indexController.homeVersion },  //! Get Version
    { method: 'GET',  url: '/info', handler:indexController.homeInfo },  //! Get Info
    { method: 'GET',  url: '/html', handler:indexController.homeHtml },  //! Get Html

    { method: 'POST', url: '/', handler:indexController.homePost}, //! Post
    { method: 'POST', url: '/token_create', handler:indexController.homeTokenCreate}, //! Token Oluşturma
    { method: 'POST', url: '/token_decode', handler:indexController.homeTokenDecode}, //! Token Çözme
    { method: 'POST', url: '/bearer_token', handler:indexController.homeBearerToken}, //! BearerToken Çözme

    //! Servisler Arası
    { method: 'GET', url: '/service/get', handler:indexController.serviceGet}, //! Servisler Arası Get
    { method: 'POST', url: '/service/post', handler:indexController.servicePost}, //! Servisler Arası POST

    //! User
    { method: 'GET', url: '/api/users/all', handler:authController.DataAll}, //! Tüm Veriler
    { method: 'GET', url: '/api/users/find/:id', handler:authController.DataFindById}, //! Veri Arama 
    { method: 'POST', url: '/api/users/find_post', handler:authController.DataPostFindById}, //! Veri Arama - Post
    { method: 'POST', url: '/api/users/find_user', handler:authController.DataPostFindByUser}, //! Veri Arama - Kullanıcı
    { method: 'POST', url: '/api/users/add', handler:authController.DataAdd}, //! Veri Ekleme 
    { method: 'POST', url: '/api/users/edit', handler:authController.DataEdit}, //! Veri Güncelleme 
    { method: 'POST', url: '/api/users/edit/multi', handler:authController.DataMultiEdit}, //! Çoklu Veri Güncelleme
    { method: 'POST', url: '/api/users/delete/:id', handler:authController.DataDelete}, //! Veri Silme 
    { method: 'POST', url: '/api/users/delete/multi', handler:authController.DataMultiDelete}, //! Çoklu Veri Silme 
    { method: 'POST', url: '/api/users/delete/edit', handler:authController.DataEditDelete}, //! Geçisi Veri Silme
    { method: 'POST', url: '/api/users/login', handler:authController.DataLogin}, //! Login

    //! Anket
    { method: 'GET', url: '/api/survey/all', handler:surveyController.DataAll}, //! Tüm Veriler
    { method: 'GET', url: '/api/survey/find/:id', handler:surveyController.DataFindById}, //! Veri Arama 
    { method: 'GET', url: '/api/survey/find/detail/:id', handler:surveyController.DataFindDetailById}, //! Veri Detaylı Arama 
    { method: 'POST', url: '/api/survey/find_post', handler:surveyController.DataPostFindById}, //! Veri Arama - Post
    { method: 'POST', url: '/api/survey/find_user', handler:surveyController.DataPostFindByUser}, //! Veri Arama - Kullanıcı
    { method: 'POST', url: '/api/survey/add', handler:surveyController.DataAdd}, //! Veri Ekleme 
    { method: 'POST', url: '/api/survey/add/options', handler:surveyController.DataAddOptions}, //! Veri Seçenekler Ekleme 
    { method: 'POST', url: '/api/survey/edit', handler:surveyController.DataEdit}, //! Veri Güncelleme 
    { method: 'POST', url: '/api/survey/edit/token', handler:surveyController.DataEditToken}, //! Veri Güncelleme  - Token
    { method: 'POST', url: '/api/survey/edit/multi', handler:surveyController.DataMultiEdit}, //! Çoklu Veri Güncelleme
    { method: 'POST', url: '/api/survey/delete/:id', handler:surveyController.DataDelete}, //! Veri Silme 
    { method: 'POST', url: '/api/survey/delete/multi', handler:surveyController.DataMultiDelete}, //! Çoklu Veri Silme 
    { method: 'POST', url: '/api/survey/delete/edit', handler:surveyController.DataEditDelete}, //! Geçisi Veri Silme


    //! Anket Seçenekler
    { method: 'GET', url: '/api/survey/options/all', handler:surveyOptionsController.DataAll}, //! Tüm Veriler
    { method: 'GET', url: '/api/survey/options/find/:id', handler:surveyOptionsController.DataFindById}, //! Veri Arama 
    { method: 'POST', url: '/api/survey/options/find_post', handler:surveyOptionsController.DataPostFindById}, //! Veri Arama - Post
    { method: 'POST', url: '/api/survey/options/find_user', handler:surveyOptionsController.DataPostFindByUser}, //! Veri Arama - Kullanıcı
    { method: 'POST', url: '/api/survey/options/add', handler:surveyOptionsController.DataAdd}, //! Veri Ekleme 
    { method: 'POST', url: '/api/survey/options/add/token', handler:surveyOptionsController.DataAddToken}, //! Veri Ekleme - Token
    { method: 'POST', url: '/api/survey/options/edit', handler:surveyOptionsController.DataEdit}, //! Veri Güncelleme 
    { method: 'POST', url: '/api/survey/options/edit/multi', handler:surveyOptionsController.DataMultiEdit}, //! Çoklu Veri Güncelleme
    { method: 'POST', url: '/api/survey/options/delete/:id', handler:surveyOptionsController.DataDelete}, //! Veri Silme 
    { method: 'POST', url: '/api/survey/options/delete/multi', handler:surveyOptionsController.DataMultiDelete}, //! Çoklu Veri Silme 
    { method: 'POST', url: '/api/survey/options/delete/edit', handler:surveyOptionsController.DataEditDelete}, //! Geçisi Veri Silme


    //! Anket Oylaması
    { method: 'GET', url: '/api/survey/voter/all', handler:surveyVoteController.DataAll}, //! Tüm Veriler
    { method: 'GET', url: '/api/survey/voter/find/:id', handler:surveyVoteController.DataFindById}, //! Veri Arama 
    { method: 'POST', url: '/api/survey/voter/find_post', handler:surveyVoteController.DataPostFindById}, //! Veri Arama - Post
    { method: 'POST', url: '/api/survey/voter/find_user', handler:surveyVoteController.DataPostFindByUser}, //! Veri Arama - Kullanıcı
    { method: 'POST', url: '/api/survey/voter/add', handler:surveyVoteController.DataAdd}, //! Veri Ekleme 
    { method: 'POST', url: '/api/survey/voter/add/token', handler:surveyVoteController.DataAddToken}, //! Veri Ekleme Token
    { method: 'POST', url: '/api/survey/voter/edit', handler:surveyVoteController.DataEdit}, //! Veri Güncelleme 
    { method: 'POST', url: '/api/survey/voter/edit/multi', handler:surveyVoteController.DataMultiEdit}, //! Çoklu Veri Güncelleme
    { method: 'POST', url: '/api/survey/voter/delete/:id', handler:surveyVoteController.DataDelete}, //! Veri Silme 
    { method: 'POST', url: '/api/survey/voter/delete/multi', handler:surveyVoteController.DataMultiDelete}, //! Çoklu Veri Silme 
    { method: 'POST', url: '/api/survey/voter/delete/edit', handler:surveyVoteController.DataEditDelete}, //! Geçisi Veri Silme


]

module.exports=routes;
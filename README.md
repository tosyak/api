В файле Json в \Lib пример того что я получаю от сервера.

в первом запросе я получаю processing (модель Processing)
из этого json из ключей materials и products беру ссылки и по этим ссылкам делаю запросы 2 (fetchProcessingMaterials()) и 3 (fetchProcessingProducts()) и получаю json (модели ProcessingMaterials и ProcessingProducts)

полученные данные из запросов 2 и 3 нужно вставить в json из 1го запроса вместо значений ключей "materials" и "products"



Функция ExchangeAnswer(Запрос)    
	
	Попытка
		
		Фамилия  = Запрос.ПараметрыЗапроса.Получить("surname");
		Имя      = Запрос.ПараметрыЗапроса.Получить("name");
		Отчество = Запрос.ПараметрыЗапроса.Получить("patronymic");  
		
		Сообщить(Фамилия + " " + Имя + " " + Отчество);	
		Ответ = Новый HTTPСервисОтвет(200);
	Исключение
		Ответ = Новый HTTPСервисОтвет(400, "Что-то пошло не так");	
	КонецПопытки;
	
	Возврат Ответ; 
	
КонецФункции

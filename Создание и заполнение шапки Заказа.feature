﻿#language: ru

@tree

Функционал: Проверка создания и заполненения документа Заказ покупателя

Как бухгалтер я хочу
чтобы документ Заказ покупателя создавался и заполнялся 
чтобы было удобнее работать   

Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий

Сценарий: Создание, заполнение и проверка расчета суммы документа Заказ покупателя
	* Открытие формы списка
		И я закрываю все окна клиентского приложения
		И В командном интерфейсе я выбираю 'Продажи' 'Заказы'
		Тогда открылось окно 'Заказы товаров'
	* Создание документа, заполнение
		И я нажимаю на кнопку с именем 'ФормаСоздать'
		Тогда открылось окно 'Заказ (создание)'
		И из выпадающего списка с именем "Организация" я выбираю точное значение 'ООО "1000 мелочей"'
		И я нажимаю кнопку выбора у поля с именем "Покупатель"
		Тогда открылось окно 'Контрагенты'
		И в таблице "Список" я выбираю текущую строку
		Тогда открылось окно 'Заказ (создание) *'
		И из выпадающего списка с именем "Склад" я выбираю точное значение 'Склад отдела продаж'
		И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
		И в таблице "Товары" из выпадающего списка с именем "ТоварыТовар" я выбираю точное значение 'Торт '
	* Проверка расчета количества
		И Проверка документа Заказ покупателя
			


﻿# language: ru


@IgnoreOn82Builds
@IgnoreOnOFBuilds

#т.к. используется метод УстановитьРезультатДиалогаВыбораФайла
@IgnoreOn836
@IgnoreOn837






Функционал: Автоматизированное получение данных макетов

Как Разработчик я хочу
Чтобы у меня был функционал для получения данных макета из TestClient
Для того чтобы я мог использовать их в своих сценариях без программирования



Контекст:
	Дано Я запускаю сценарий открытия TestClient или подключаю уже существующий
	
	
	
	
Сценарий: Я получаю данные макета открытого отдельным окном
	Когда я удаляю все элементы Справочника "Справочник3"
	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     в панели функций я выбираю "Справочник3"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И     В открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать"
	И     В открытой форме я нажимаю на кнопку с заголовком "Сформировать отчет"
	И     я жду когда в табличном документе "РеквизитТабличныйДокумент" заполнится ячейка "r4c2" в течение 20 секунд

	#проверка на частичное чтение табличного документа
	Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 4 КолКол 6
	И     табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование' | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |

	
	Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 5 КолКол 6
	И     Я нажмаю на кнопку Vanessa-Behavior "Забыть состояние формы TestClient"
	И     Я нажмаю на кнопку Vanessa-Behavior "ПолучитьИзмененияФормыGherkin"
	
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'Предопределенный'
	
	И табличный документ "РеквизитТабличныйДокумент" соответствует макету "Макет1"
	И область "R4C3:R5C6" табличного документа "РеквизитТабличныйДокумент" соответствует макету "МакетОбласть1"
		
	И     табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование' | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест'         | 'Нет'              | '*'            | ''                          | '1,2'           |
		
	И     табличный документ формы с именем "РеквизитТабличныйДокумент" содержит строки:
		| 'Тест'         | 'Нет'              | '*'            | ''                          | '1,2'           |

	И табличный документ "РеквизитТабличныйДокумент" содержит значения:
		| 'Тест'         | 
		| 'Нет'          | 

	И табличный документ "РеквизитТабличныйДокумент" не содержит значения:
		| '1111111111'         |  
		| '2222222222'         |  

#для строк
	И в табличном документе "РеквизитТабличныйДокумент" значения в колонке "Наименование" равно значению "Тест"
	И в табличном документе "РеквизитТабличныйДокумент" значения в колонке "Наименование" неравно значению "1111111111"
	
#для чисел
	И в табличном документе "РеквизитТабличныйДокумент" значения в колонке "ПараметрЧисло" соответствуют условию  "больше"  1.1
	
	

	И     В открытой форме я нажимаю на кнопку "Записать и закрыть"

		
Сценарий: Я получаю данные макета открытого отдельным окном когда в ячейке макета есть экранированная вертикальная черта
	Когда я удаляю все элементы Справочника "Справочник3"
	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     в панели функций я выбираю "Справочник3"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И     В открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать"
	И     В открытой форме я нажимаю на кнопку с заголовком "Сформировать отчет с вертикальной чертой"


	Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 5 КолКол 6
	И     Я нажмаю на кнопку Vanessa-Behavior "Забыть состояние формы TestClient"
	И     Я нажмаю на кнопку Vanessa-Behavior "ПолучитьИзмененияФормыGherkin"
	
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'Предопределенный'
		
	И     табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование'    | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест\|ДопСтрока' | 'Нет'              | '*'            | ''                          | '1,2'           |

	И     В открытой форме я нажимаю на кнопку "Записать и закрыть"
		
		
		
		

Сценарий: Я получаю данные макета открытого отдельным окном когда в ячейке макета есть вертикальная черта
	Когда я удаляю все элементы Справочника "Справочник3"
	

	Когда Я нажимаю кнопку командного интерфейса "Основная"
	И     в панели функций я выбираю "Справочник3"
	И     В открытой форме я нажимаю на кнопку с заголовком "Создать"
	Тогда открылось окно "Справочник3 (создание)"
	И     В открытой форме в поле с заголовком "Наименование" я ввожу текст "Тест"
	И     В открытой форме я нажимаю на кнопку с заголовком "Записать"
	И     В открытой форме я нажимаю на кнопку с заголовком "Сформировать отчет с вертикальной чертой"


	Тогда Я задаю системные параметры считывания макета НачСтр 1 НачКол 1 КолСтр 5 КолКол 6
	И     Я нажмаю на кнопку Vanessa-Behavior "Забыть состояние формы TestClient"
	И     Я нажмаю на кнопку Vanessa-Behavior "ПолучитьИзмененияФормыGherkin"
	
	
	Тогда В реквизите Vanessa-Behavior "СгенерированныйСценарий" будет содержаться строка 'Предопределенный'
		
	И     табличный документ формы с именем "РеквизитТабличныйДокумент" стал равен:
		| 'Наименование'    | 'Предопределенный' | 'ВерсияДанных' | 'ИмяПредопределенныхДанных' | 'ПараметрЧисло' |
		| 'Тест|ДопСтрока'  | 'Нет'              | '*'            | ''                          | '1,2'           |

	И     В открытой форме я нажимаю на кнопку "Записать и закрыть"
		
			
	
		
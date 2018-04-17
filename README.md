# Use_Desk_iOS_SDK

[![CI Status](http://img.shields.io/travis/Maxim/Use_Desk_iOS_SDK.svg?style=flat)](https://travis-ci.org/Maxim/Use_Desk_iOS_SDK)
[![Version](https://img.shields.io/cocoapods/v/Use_Desk_iOS_SDK.svg?style=flat)](http://cocoapods.org/pods/Use_Desk_iOS_SDK)
[![License](https://img.shields.io/cocoapods/l/Use_Desk_iOS_SDK.svg?style=flat)](http://cocoapods.org/pods/Use_Desk_iOS_SDK)
[![Platform](https://img.shields.io/cocoapods/p/Use_Desk_iOS_SDK.svg?style=flat)](http://cocoapods.org/pods/Use_Desk_iOS_SDK)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

Use_Desk_iOS_SDK is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:



## Тестовое приложение

Для запуска тестового приложения нужно:

-Клонировать репозиторий

-Запустить терминал

-Перейти в скаченную дирректорию (в папку Example)

-Выполнить команду `pod install`

## Скриншоты Тестового приложения
<a href="https://imgur.com/qVKFEi2"><img src="https://i.imgur.com/qVKFEi2.png?1" title="source: imgur.com" /></a>
<a href="https://imgur.com/0JaMLrQ"><img src="https://i.imgur.com/0JaMLrQ.png?1" title="source: imgur.com" /></a>
<a href="https://imgur.com/BmvNVGc"><img src="https://i.imgur.com/BmvNVGc.png?1" title="source: imgur.com" /></a>

## Добавление библиотеки в проект:

Библиотека Use_Desk_iOS_SDK доступна через систему управления зависимостями [CocoaPods](http://cocoapods.org).

-Добавьте строчку в Podfile вашего приложения
```ruby
pod "Use_Desk_iOS_SDK"
```

-Выполните команду в терминале `pod update`

-Подключаем библиотеку #import "UseDeskSDK.h"`

#### Выполняем операцию инициализации чата параметрами:

| Переменная  | Тип | Описание |
| -------------| ------------- | ------------- |
| CompanyID | NSString | идентификатор компании |
| Email | NSString | почта клиента |
| URL | NSString | адрес сервера с номером порта |

#### Блок возвращает следующие параметры:

| Переменная  | Тип | Описание |
| -------------| ------------- | ------------- |
| Success | BOOL | статус подключения к серверу |
| Error | NSString | описание ошибки при неудачном подключении |

#### Пример:
```objective-c
[UDS startWithCompanyID:@”1234567” email:@”lolo@yandex.ru” url:@”https:dev.company.ru” port:@”213” connectionStatus:^(BOOL success, NSString *error) {
        
    }];

```

## Подключение SDK без графического интерфейса

- Подключаем библиотеку #import "UseDeskSDK.h"

- Выполняем операцию инициализации чата параметрами без GUI:

| Переменная  | Тип | Описание |
| -------------| ------------- | ------------- |
| CompanyID | NSString | идентификатор компании |
| Email | NSString | почта клиента |
| URL | NSString | адрес сервера |
| Port | NSString | порт сервера |

#### Пример:
```objective-c
[UDS startWithoutGUICompanyID: :@”1234567” email: @”lolo@yandex.ru”  url: @”https:dev.company.ru:213”  connectionStatus:^(BOOL success, NSString *error) {

}];
```

#### Блок возвращает следующие параметры:

| Переменная  | Тип | Описание |
| -------------| ------------- | ------------- |
| Success | BOOL | статус подключения к серверу |
| Error | NSString | описание ошибки при неудачном подключении |

Если тип ошибки noOperators то нет доступных операторов в данный момент времени

## Отправка тестового сообщения:

| Переменная  | Тип | Описание |
| -------------| ------------- | ------------- |
| Message | NSString | тест сообщения |


#### Пример:
```objective-c
[UDS sendMessage:@”привет как дела?”];
```


## Отправка тестового сообщения с вложением:

| Переменная  | Тип | Описание |
| -------------| ------------- | ------------- |
| Message | NSString | тест сообщения |
| FileName | NSString | имя файла |
| fileType | NSString | тип файла (MIMO) |
| contentBase64 | Base64 | данные |

#### Пример:
```objective-c
[UDS sendMessage:text withFileName:@"file" fileType:@"image/png" contentBase64:content];
```

## Отправка оффлайн формы на сервер:


## Author

Maxim, ixotdog@gmail.com

## License

Use_Desk_iOS_SDK is available under the MIT license. See the LICENSE file for more info.

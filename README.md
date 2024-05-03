# Домашнее задание к занятию «Вычислительные мощности. Балансировщики нагрузки» - `Мальцев Виктор`

---

Задание 1. Yandex Cloud
Что нужно сделать

1. Создать бакет Object Storage и разместить в нём файл с картинкой:

    Создать бакет в Object Storage с произвольным именем (например, имя_студента_дата).
    Положить в бакет файл с картинкой.
    Сделать файл доступным из интернета.

    ![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_1.jpg)

2. Создать группу ВМ в public подсети фиксированного размера с шаблоном LAMP и веб-страницей, содержащей ссылку на картинку из бакета:
    Создать Instance Group с тремя ВМ и шаблоном LAMP. Для LAMP рекомендуется использовать image_id = fd827b91d99psvq5fjit.
    Для создания стартовой веб-страницы рекомендуется использовать раздел user_data в meta_data.
    Разместить в стартовой веб-странице шаблонной ВМ ссылку на картинку из бакета.
    Настроить проверку состояния ВМ.

    ![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_2.jpg)

3. Подключить группу к сетевому балансировщику:
    Создать сетевой балансировщик.
    Проверить работоспособность, удалив одну или несколько ВМ.

    ![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_3.jpg)

    После удаления ВМ резульатат отображения не изменился

    ![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_4.jpg)

    ![alt text](https://github.com/vmmaltsev/screenshot/blob/main/Screenshot_5.jpg)
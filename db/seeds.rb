# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Classification.destroy_all
User.destroy_all
Level.destroy_all
User.create(username: 'admin', email: 'admin@mail.ru', password: '123123', id: 1000).add_role :admin
User.create(username: 'user1', email: 'u1@mail.ru', password: '123123', id: 1001)
User.create(username: 'user2', email: 'u2@mail.ru', password: '123123', id: 1002)
User.create(username: 'user3', email: 'u3@mail.ru', password: '123123', id: 1003)
User.create(username: 'user4', email: 'u4@mail.ru', password: '123123', id: 1004)
User.create(username: 'user5', email: 'u5@mail.ru', password: '123123', id: 1005)
User.create(username: 'user6', email: 'u6@mail.ru', password: '123123', id: 1006)
User.create(username: 'user7', email: 'u7@mail.ru', password: '123123', id: 1007)
User.create(username: 'user8', email: 'u8@mail.ru', password: '123123', id: 1008)
User.create(username: 'user9', email: 'u9@mail.ru', password: '123123', id: 1009)

c1001 = Classification.create(name: 'Английский язык', id: 1001)
  Level.create(name: 'Класс 1', classification: c1001)
  Level.create(name: 'Класс 2', classification: c1001)
  Level.create(name: 'Класс 3', classification: c1001)
  Level.create(name: 'Класс 4', classification: c1001)

c1002 = Classification.create(name: 'Математика', id: 1002)
  Level.create(name: 'Класс 1', classification: c1002)
  Level.create(name: 'Класс 2', classification: c1002)
  Level.create(name: 'Класс 3', classification: c1002)

c1003 = Classification.create(name: 'Биология', id: 1003)
  Level.create(name: 'Класс 5', classification: c1003)
  Level.create(name: 'Класс 6', classification: c1003)
  Level.create(name: 'Класс 7', classification: c1003)
  Level.create(name: 'Класс 8', classification: c1003)
  Level.create(name: 'Класс 9', classification: c1003)

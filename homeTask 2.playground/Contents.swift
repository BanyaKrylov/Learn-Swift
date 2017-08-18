// задание 1

//Мы изучили кортежи, массивы и словари

//1.1 Каким образом вы описали бы и хранили аудиозапись? (название, исполнитель, длительность)
//Создайте четыре константы, в каждой из которых будет вся эта информация. Выберите для этого четыре любимых песни

let song1 = ("Название", "Исполнитель", 320)
let song2 = ("Название2", "Исполнитель2", 321)
let song3 = ("Название3", "Исполнитель3", 322)
let song4 = ("Название4", "Исполнитель4", 323)

//1.2 Каким образом вы хранили бы несколько аудиозаписей? (плейлист по жанру например)
//Создайте две константы, которые описывают два плейлиста

var playlist1 = [song1, song2]
var playlist2 = [song3, song4]

//1.3 Каким образом вы хранили бы ВСЕ аудиозаписи пользователя с разделением по жанрам? (плейлисты из аудиозаписей)
//Создайте одну константу для этого

var allSongs = ["Rock": playlist1, "Pop": playlist2]

//*1.4 Используйте enum для описания жанра

enum Jenre {
    case rock
    case pop
}


//задание 2

//2.1 создайте для той же цели структуру Audio

struct Audio {
    var name: String
    var sings: String
    var length: Int
}

//2.2 теперь структуру Playlist, в которой будет список Audio, жанр плейлиста
// *и возможность искать песню по названию, добавлять новую песню, считать количество песен

struct Playlist {
    var playlists: Audio
    var jenre: String
    
    func audio(with name: String) -> Audio? {
        if let nonOption = Audio {
            if playlists.name == name {
                return Audio
            }
        } else {
            "nil sing"
        }
    }
    
    func add(new audio: Audio) {
        playlist1.append(audio)
    }
    
    func numberOfAudios() -> Int {
        playlist1.count
    }
    
}

//2.3 а теперь структуру AudioFolder, в которой будет список Playlist'ов
//*и возможность искать плейлист по жанру, добавлять новый плейлист, считать количество песен всего

struct AudioFolder {
    var audioFolder: Playlist
    
    func playlist(with jenre: Jenre) -> Playlist? {
        if let nonOption = Playlist {
            if allSongs.jenre == jenre {
                return Playlist
            }
        } else {
            "nil list"
        }
    }
    
    func add(new playlist: Playlist) {
        allSongs[playlist.jenre] = [playlist]
    }
    
    func totalNumberOfAudios() -> Int {
        allSongs.count
    }
    
}

// задание 3

//Создать проект, в котором будет 9 красных (черных etc.) кнопок (решёточкой 3 на 3). Реализовать это нужно с помощью StackView
//При нажатии на любую их этих кнопок у нее появляется какая-то картинка
//Подсказка: несколько кнопок можно привязать к одному action
//Подсказка: Можно сделать так, чтобы в этот action приходил аргументом sender - это и есть наша кнопка (выбрать type не Any, а UIButton. А внизу arguments не None, а sender)

// */2 aka полузвёздочка - задавать стили этим кнопкам с помощью своего класса (см. конспект)

//*сделать для каждой из этих кнопок разную картинку (или случайную картинку из нескольких)

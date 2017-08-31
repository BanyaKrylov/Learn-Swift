//
//  GameScene.swift
//  SpriteKitBasics
//
//  Created by Иван Крылов on 28.08.17.
//  Copyright © 2017 Иван Крылов. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        sceneSetting()
        sKSpriteNodeDemo()
    }
    
    func sceneSetting() {
        self.backgroundColor = #colorLiteral(red: 1, green: 0.7088894842, blue: 0.4229762584, alpha: 1)
    }
    
    func sKSpriteNodeDemo()
    {
        //Создаем переменную Texture и ей присваиваем объект типа SKTexture. В качестве параметра передаем имя нашего изображение
        let Texture = SKTexture(imageNamed: "desert_BG")
        
        //Создаем переменную BackgroundSprite и ей присваиваем объект типа SKSpriteNode.
        // В качестве параметра передаем объект типа SKTexture созданный нами выше.
        let BackgroundSprite = SKSpriteNode(texture: Texture)
        BackgroundSprite.size = CGSize(width:640, height:320) //задаем размер.
        BackgroundSprite.position = CGPoint(x:-200, y:-150) //задаем позицию.
        BackgroundSprite.anchorPoint = CGPoint(x:0, y:0) //задаем начальную точку.
        BackgroundSprite.name = "BackgroundSprite" // задаем имя.
        self.addChild(BackgroundSprite) //добавляем наш объект на нашу сцену.
        
        //Создаем переменную SimpleSprite и ей присваиваем объект типа SKSpriteNode.
        // В качестве параметров передаем цвет и размер.
        let SimpleSprite = SKSpriteNode(color: UIColor.blue, size: CGSize(width:50, height:50))
        SimpleSprite.position = CGPoint(x:200, y:150) //задаем позицию.
        SimpleSprite.zPosition = 1; // задаем  положение нашего объекта относительно оси Z.
        SimpleSprite.name = "SimpleSprite" // задаем имя.
        self.addChild(SimpleSprite) //добавляем наш объект на нашу сцену.
        
        //Создаем переменную ImageSprite и ей присваиваем объект типа SKSpriteNode.
        // В качестве параметров передаем имя нашего изображение.
        let ImageSprite = SKSpriteNode(imageNamed: "DerevoOpora")
        ImageSprite.position = CGPoint(x:250, y:50)  //задаем позицию.
        ImageSprite.size = CGSize(width:100, height:15) //задаем размер.
        ImageSprite.name = "ImageSprite" // задаем имя.
        self.addChild(ImageSprite) //добавляем наш объект на нашу сцену.
        
        
    }
}

//
//  level1.swift
//  iOS_Shooter
//
//  Created by Sravan Karuturi on 24/09/16.
//  Copyright © 2016 Sravan Karuturi. All rights reserved.
//

import SpriteKit;

class LevelScene: SKScene {
    
    // MARK: - iVars for Levels
    
    var currentLevel: Int;
    var player1Node : SKSpriteNode! ;
    var player2Node : SKSpriteNode! ;
    var player1ScoreLabel: SKLabelNode! ;
    var player2ScoreLabel: SKLabelNode! ;
    var levelLabel: SKLabelNode! ;
    var player1LifeLabel: SKLabelNode! ;
    var player2LifeLabel: SKLabelNode! ;
    var gameData: GameData;
    
    init(currentLevel: Int, gameData: GameData, size: CGSize, scaleMode: SKSceneScaleMode, sceneManager: GameViewController) {
        
        
        // MARK: - Labels Initialisation -
        player1ScoreLabel = SKLabelNode(fontNamed: gameData.fontName);
        player2ScoreLabel = SKLabelNode(fontNamed: gameData.fontName);
        levelLabel = SKLabelNode(fontNamed: gameData.fontName);
        player1LifeLabel = SKLabelNode(fontNamed: gameData.fontName);
        player2LifeLabel = SKLabelNode(fontNamed: gameData.fontName);
        self.gameData = gameData;
        self.currentLevel = currentLevel;
        
        super.init(size:size);
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func didMove(to view: SKView){
        self.addChild(player1ScoreLabel);
        self.addChild(levelLabel);
        
        initLabel(label: player1ScoreLabel, gameData: gameData, text: "\(gameData.player1.score)", pos: CGPoint(x: self.size.width/4, y: self.size.height - 50 ) );
        
    }
    
    func initialisePlayers(){
        
        player1Node = SKSpriteNode(imageNamed: "player1");
        player1Node.xScale = 0.1;
        player1Node.yScale = 0.1;
        player1Node.position = CGPoint(x: self.size.width/4, y: self.size.height/2 );
        
        
        player2Node = SKSpriteNode(imageNamed: "player2");
        player2Node.xScale = 0.1;
        player2Node.yScale = 0.1;
        player2Node.position = CGPoint(x: 3 * self.size.width/4, y: self.size.height/2 );
    }
    
    func initLabel(label: SKLabelNode, gameData: GameData, text: String, pos: CGPoint){
        label.text = text;
        label.fontSize = gameData.fontSize;
        label.fontColor = gameData.fontColor;
        label.position = pos;
    }
    
}

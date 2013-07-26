//
//  ViewController.m
//  WordBrowser
//
//  Created by Umut Kanbak on 7/24/13.
//  Copyright (c) 2013 Umut Kanbak. All rights reserved.
//

#import "ViewController.h"
#import "Word.h"
#import "SecondViewController.h"

@interface ViewController ()
{   
    Word *pizza;
    Word *hotPockets;
    Word *sandwich;
    Word *blt;
    Word *reuben;
    Word *dagwood;
    Word *hoagie;
    Word *newWord;
    NSMutableDictionary *wordsDictionary;
    NSArray *keysArray;
    __weak IBOutlet UITableView *myTableView;
    int path;
}
@end

@implementation ViewController

-(id)initWithCoder:(NSCoder *)aDecoder{
    if (self =[super initWithCoder:aDecoder])
    {
        Word *newWord = [[Word alloc]init];
        wordsDictionary = [[NSMutableDictionary alloc]initWithCapacity:10];
        keysArray= [[NSArray alloc]init];
        
        pizza = [[Word alloc]initWithName:@"pizza" andDefinition:@"a flat, open-faced baked pie of Italian origin, consisting of a thin layer of bread dough topped with spiced tomato sauce and cheese, often garnished with anchovies, sausage slices, mushrooms, etc"];
        NSMutableArray *pizzaArray;
        pizzaArray =[[NSMutableArray alloc]initWithCapacity:2];
        [pizzaArray addObject:@"pie"];
        [pizzaArray addObject:@"flat bread"];
        pizza.synonyms=pizzaArray;
        [wordsDictionary setObject:pizza forKey:pizza.name];
        
        hotPockets=[[Word alloc]initWithName:@"Hot Pockets" andDefinition:@"An American delicassy!"];
        NSMutableArray *hotPocketsArray;
        hotPocketsArray =[[NSMutableArray alloc]initWithCapacity:2];
        [hotPocketsArray addObject:@"sub"];
        [hotPocketsArray addObject:@"frozen sub"];
        hotPockets.synonyms=hotPocketsArray;
        [wordsDictionary setObject:hotPockets forKey:hotPockets.name];
        
        sandwich=[[Word alloc]initWithName:@"Sandwich" andDefinition:@"two or more slices of bread or the like with a layer of meat, fish, cheese, etc., between each pair"];
        NSMutableArray *sandwichArray;
        sandwichArray =[[NSMutableArray alloc]initWithCapacity:2];
        [sandwichArray addObject:@"sub"];
        [sandwichArray addObject:@"submarine"];
        sandwich.synonyms=sandwichArray;
        [wordsDictionary setObject:sandwich forKey:sandwich.name];
        
        blt=[[Word alloc]initWithName:@"BLT" andDefinition:@"a bacon, lettuce, and tomato sandwich"];
        NSMutableArray *bltArray;
        bltArray =[[NSMutableArray alloc]initWithCapacity:2];
        [bltArray addObject:@"sub"];
        [bltArray addObject:@"submarine"];
        blt.synonyms=bltArray;
        [wordsDictionary setObject:blt forKey:blt.name];
        
        reuben=[[Word alloc]initWithName:@"Reuben" andDefinition:@"a grilled sandwich of corned beef, Swiss cheese, and sauerkraut on rye bread"];
        NSMutableArray *reubenArray;
        reubenArray =[[NSMutableArray alloc]initWithCapacity:2];
        [reubenArray addObject:@"sandwich"];
        [reubenArray addObject:@"sub"];
        reuben.synonyms=reubenArray;
        [wordsDictionary setObject:reuben forKey:reuben.name];
        
        dagwood=[[Word alloc]initWithName:@"Dagwood" andDefinition:@"thick sandwich, with multiple layers"];
        NSMutableArray *dagwooodArray;
        dagwooodArray =[[NSMutableArray alloc]initWithCapacity:2];
        [dagwooodArray addObject:@"sandwich"];
        [dagwooodArray addObject:@"sub"];
        dagwood.synonyms=dagwooodArray;
        [wordsDictionary setObject:dagwood forKey:dagwood.name];
        
        hoagie=[[Word alloc]initWithName:@"Hoagie" andDefinition:@"long sandwich"];
        NSMutableArray *hoagieArray;
        hoagieArray =[[NSMutableArray alloc]initWithCapacity:2];
        [hoagieArray addObject:@"sandwich"];
        [hoagieArray addObject:@"sub"];
        hoagie.synonyms=hoagieArray;
        [wordsDictionary setObject:hoagie forKey:hoagie.name];
        
        keysArray=[wordsDictionary allKeys];
        NSLog(@"%@",keysArray);
        NSLog(@"%@",[wordsDictionary allValues]);
        NSLog(@"%@",[wordsDictionary allKeys]);
        NSLog(@"%@",hoagieArray);
        
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}



#pragma mark UITableViewDataSource

-(int) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [wordsDictionary count];
}
-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell" forIndexPath:indexPath];
    cell.textLabel.text=[keysArray objectAtIndex: indexPath.row];
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    path=indexPath.row;
    newWord = [wordsDictionary objectForKey:[keysArray objectAtIndex:indexPath.row]];
   

    [self performSegueWithIdentifier:@"toSecondView" sender:self];
    
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController *secondViewController = segue.destinationViewController;
    secondViewController.definition = newWord.definition;
}

@end

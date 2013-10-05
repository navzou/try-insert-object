//
//  ViewController.m
//  InsertObject
//
//  Created by navzou on 10/5/13.
//  Copyright (c) 2013 navzou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self main];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)main
{
    NSMutableArray *myArray;
    myArray = [NSMutableArray arrayWithObject:@"Apple"];
    
    NSIndexSet *indexes;
    indexes = [NSIndexSet indexSetWithIndexesInRange:
               NSMakeRange(0, 2)];
    
    NSArray *insertedObjects;
    insertedObjects = [NSArray arrayWithObjects:@"Banana", @"Orange", nil];
    
    [myArray insertObjects:insertedObjects
                 atIndexes:indexes];
    NSLog(@"%@", myArray);
    
    
    NSMutableOrderedSet *orderedSet;
    orderedSet = [NSMutableOrderedSet orderedSetWithObject:@"Apple"];
    
    [orderedSet insertObjects:insertedObjects
                    atIndexes:indexes];
    NSLog(@"%@", orderedSet);
}

@end

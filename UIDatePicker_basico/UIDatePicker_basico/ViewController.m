//
//  ViewController.m
//  UIDatePicker_basico
//
//  Created by Henry AT on 9/30/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize resultadoLabel;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)calcularDiferenciaFecha:(UIDatePicker *)sender {
    
    NSDate *fechaHoy;
    NSString *salidaDiferencia;
    NSString *fechaHoyCadena;
    NSDateFormatter *formatoFecha;
    NSTimeInterval diferencia;
    
    fechaHoy = [[NSDate alloc] init];
    diferencia = [fechaHoy timeIntervalSinceDate:[sender date]]/86400;
    
    formatoFecha  = [[NSDateFormatter alloc] init];
    [formatoFecha setDateFormat:@"MMMM d, yyyy hh:mm:ssa"];
    fechaHoyCadena = [formatoFecha stringFromDate:fechaHoy];
    
    salidaDiferencia=[[NSString alloc] initWithFormat:@"Diferencia entre la fecha escogida y hoy (%@) en dias:%1.2f",fechaHoyCadena,fabsf(diferencia)];
    resultadoLabel.text = salidaDiferencia;
    
}
- (void)viewDidUnload {
    [self setResultadoLabel:nil];
    [super viewDidUnload];
}
@end

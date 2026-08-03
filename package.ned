package NetworkSlicing.simulations;

import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.base.ApplicationLayerNodeBase;
import inet.node.inet.Router;
import inet.node.ethernet.Eth10G;
import inet.node.inet.StandardHost;
import ned.IdealChannel;
import simu5g.common.binder.Binder;
import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import simu5g.common.carrierAggregation.CarrierAggregation;
import simu5g.nodes.NrUe;
import simu5g.nodes.PgwStandard;
import simu5g.nodes.Upf;
import simu5g.nodes.gNodeB;
import simu5g.world.radio.ChannelControl;
import simu5g.world.radio.LteChannelControl;



@license(LGPL);
network factory
{
    parameters:

        @display("bgb=120,60");


    submodules:

        configurator: Ipv4NetworkConfigurator {
            @display("p=1.5936635,1.5936635");
        }

        gNodeB: gNodeB {
            @display("p=10,10");
        }
        gNodeB1: gNodeB {
            @display("p=10,30");
        }
        gNodeB2: gNodeB {
            @display("p=10,50");
        }

        gNodeB3: gNodeB {
            @display("p=30,10");
        }
        gNodeB4: gNodeB {
            @display("p=30,30");
        }
        gNodeB5: gNodeB {
            @display("p=30,50");
        }

        gNodeB6: gNodeB {
            @display("p=50,10");
        }
        gNodeB7: gNodeB {
            @display("p=50,30");
        }
        gNodeB8: gNodeB {
            @display("p=50,50");
        }
        gNodeB9: gNodeB {
            @display("p=70,10");
        }
        gNodeB10: gNodeB {
            @display("p=70,30");
        }
        gNodeB11: gNodeB {
            @display("p=70,50");
        }
        gNodeB12: gNodeB {
            @display("p=90,10");
        }
        gNodeB13: gNodeB {
            @display("p=90,30");
        }
        gNodeB14: gNodeB {
            @display("p=90,50");
        }
        gNodeB15: gNodeB {
            @display("p=110,10");
        }
        gNodeB16: gNodeB {
            @display("p=110,30");
        }
        gNodeB17: gNodeB {
            @display("p=110,50");
        }
        sensor[35]: NrUe {   //was 50

            @display("p=59.762383,1.5936635");
        }

        weldingArm[18]: NrUe {   //was 5

            @display("p=40.16032,1.5936635");
        }
        deliveryRobot[1]: NrUe {    // was 5

            @display("p=80.3,1.5");
        }
        qualityCamera[1]: NrUe {	//was 4

            @display("p=21.673824,1.5936635");
        }
        arGlass[1]: NrUe {	//was 2

            @display("p=99.12587,1.5936635");
        }
        binder: Binder {
            @display("p=118.409195,1.5936635");
        }
        channelControl: ChannelControl {
            @display("p=1.4342972,57.69062");
        }
        routingTableRecorder: RoutingTableRecorder {
            @display("p=6.055921,57.69062");
        }


        upf: Upf {
            @display("p=60,30");
        }
        server: StandardHost {
            @display("p=98.9,21.6");
        }
        carrierAggregation: CarrierAggregation {
            @display("p=1.3,18.9");
        }
        router: Router {
            @display("p=60,10");
        }
    connections:

        gNodeB.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB1.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB2.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB3.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB4.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB5.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB6.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB7.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB8.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB9.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB10.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB11.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB12.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB13.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB14.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB15.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB16.ppp <--> Eth10G <--> upf.pppg++;
        gNodeB17.ppp <--> Eth10G <--> upf.pppg++;

        //# X2 connections
        gNodeB17.x2++ <--> Eth10G <--> gNodeB14.x2++;
        gNodeB17.x2++ <--> Eth10G <--> gNodeB16.x2++;
        gNodeB16.x2++ <--> Eth10G <--> gNodeB13.x2++;
        gNodeB15.x2++ <--> Eth10G <--> gNodeB16.x2++;
        gNodeB15.x2++ <--> Eth10G <--> gNodeB12.x2++;
        gNodeB14.x2++ <--> Eth10G <--> gNodeB11.x2++;
        gNodeB14.x2++ <--> Eth10G <--> gNodeB13.x2++;
        gNodeB13.x2++ <--> Eth10G <--> gNodeB12.x2++;
        gNodeB13.x2++ <--> Eth10G <--> gNodeB10.x2++;
        gNodeB11.x2++ <--> Eth10G <--> gNodeB8.x2++;
        gNodeB10.x2++ <--> Eth10G <--> gNodeB11.x2++;
        gNodeB10.x2++ <--> Eth10G <--> gNodeB9.x2++;
        gNodeB10.x2++ <--> Eth10G <--> gNodeB7.x2++;
        gNodeB9.x2++ <--> Eth10G <--> gNodeB12.x2++;
        gNodeB8.x2++ <--> Eth10G <--> gNodeB5.x2++;
        gNodeB7.x2++ <--> Eth10G <--> gNodeB6.x2++;
        gNodeB7.x2++ <--> Eth10G <--> gNodeB8.x2++;
        gNodeB7.x2++ <--> Eth10G <--> gNodeB4.x2++;
        gNodeB6.x2++ <--> Eth10G <--> gNodeB9.x2++;
        gNodeB5.x2++ <--> Eth10G <--> gNodeB2.x2++;
        gNodeB4.x2++ <--> Eth10G <--> gNodeB3.x2++;
        gNodeB4.x2++ <--> Eth10G <--> gNodeB5.x2++;
        gNodeB4.x2++ <--> Eth10G <--> gNodeB1.x2++;
        gNodeB3.x2++ <--> Eth10G <--> gNodeB6.x2++;
        gNodeB2.x2++ <--> Eth10G <--> gNodeB1.x2++;
        gNodeB1.x2++ <--> Eth10G <--> gNodeB.x2++;
        gNodeB.x2++ <--> Eth10G <--> gNodeB3.x2++;










        upf.filterGate <--> Eth10G <--> router.pppg++;

        server.pppg++ <--> Eth10G <--> router.pppg++;
}


package simulations;


import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.networklayer.ipv4.RoutingTableRecorder;
import inet.node.ethernet.Eth10G;
import inet.node.inet.Router;
import inet.node.inet.StandardHost;
import ned.IdealChannel;
import simu5g.common.binder.Binder;
import simu5g.common.carrierAggregation.CarrierAggregation;
import simu5g.nodes.Upf;
import simu5g.nodes.NR.gNodeB;
import simu5g.nodes.NR.NRUe;
import simu5g.nodes.backgroundCell.BackgroundCell;
import simu5g.world.radio.LteChannelControl;


network NetworkSlicing
{
    parameters:
        int numUe = default(1);
        int numBgCells = default(0);
        @display("bgb=2000,2000");
    submodules:
        configurator: Ipv4NetworkConfigurator {
            @display("p=278.2686,101.80559");
        }
        binder: Binder {
            @display("p=274.8751,332.5649");
        }
        carrierAggregation: CarrierAggregation {
            @display("p=274.8751,563.3242");
        }
        upf: Upf {
            @display("p=858.5604,234.15285");
        }
        gnb: gNodeB {
            @display("p=1516.9032,268.08804");
        }
        server: StandardHost {
            @display("p=858.5604,1062.1716");
        }
        ue[numUe]: NRUe {
            @display("p=1516.9032,749.96783");
        }
        channelControl: LteChannelControl {
            @display("p=274.8751,760.1484");
        }
        routingTableRecorder: RoutingTableRecorder {
            @display("p=274.8751,1014.66235");
        }
        router: Router {
            @display("p=858.5604,631.19464");
        }

    connections:
        upf.pppg++ <--> Eth10G <--> gnb.ppp;
        upf.pppg++ <--> Eth10G <--> router.pppg++;
        server.ethg++ <--> Eth10G <--> router.ethg++;
}


# ========
# Services
# ========
print("Ativando servico de solo!");

# -----------------------------------------------------------------------------
# FUNC : serviceonoff
# Ativa e desativa o servico de solo
# -----------------------------------------------------------------------------
servicedevice = "/controls/groundservice/active";
props.Node.new(servicedevice);
setprop(servicedevice, "false");

serviceonoff = func {
    servicedevice = "/controls/groundservice/active";
    valueservice = getprop(servicedevice);
    
    if(valueservice == 0 or valueservice == nil) {
    	setprop(servicedevice, "true" );
		runservicetime();
    } else {
    	setprop(servicedevice, "false" );
		var servicetime = props.globals.getNode("/sim/servicetime");
		var stvalue = servicetime.getValue();
		servicetime.setValue(0);
	}
}

# -----------------------------------------------------------------------------
# FUNC : runservicetime
# Realiza o decorrer do tempo para as animações do servico de solo
# -----------------------------------------------------------------------------

	# AJUSTE DAS CONFIGURACOES
	# Tempo total do servico de solo
	props.globals.initNode("/sim/serviceconf/max-time", 10);

	# Inicializa props necessarias para o sistema
	props.globals.initNode("/sim/servicetime", 0);

var runservicetime = func {
	var servicetime = props.globals.getNode("/sim/servicetime");
	var stvalue = servicetime.getValue();
	
	if ( stvalue == 0 ) {
		interpolate("/sim/servicetime", 10, 600 );
	} else {
		servicetime.setValue(0);
		interpolate("/sim/servicetime", 10, 600 );
	}
	
}


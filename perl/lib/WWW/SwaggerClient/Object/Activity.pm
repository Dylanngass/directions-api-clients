=begin comment

GraphHopper Directions API

You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::Object::Activity;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::SwaggerClient::Object::Address;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

GraphHopper Directions API

You use the GraphHopper Directions API to add route planning, navigation and route optimization to your software. E.g. the Routing API has turn instructions and elevation data and the Route Optimization API solves your logistic problems and supports various constraints like time window and capacity restrictions. Also it is possible to get all distances between all locations with our fast Matrix API.

OpenAPI spec version: 1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "WWW::SwaggerClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => '',
                                  class => 'Activity',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'type' => {
    	datatype => 'string',
    	base_name => 'type',
    	description => 'type of activity',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => 'id referring to the underlying service or shipment, i.e. the shipment or service this activity belongs to',
    	format => '',
    	read_only => '',
    		},
    'location_id' => {
    	datatype => 'string',
    	base_name => 'location_id',
    	description => 'id that refers to address',
    	format => '',
    	read_only => '',
    		},
    'address' => {
    	datatype => 'Address',
    	base_name => 'address',
    	description => 'address of activity',
    	format => '',
    	read_only => '',
    		},
    'arr_time' => {
    	datatype => 'int',
    	base_name => 'arr_time',
    	description => 'arrival time at this activity in seconds',
    	format => '',
    	read_only => '',
    		},
    'end_time' => {
    	datatype => 'int',
    	base_name => 'end_time',
    	description => 'end time of and thus departure time at this activity',
    	format => '',
    	read_only => '',
    		},
    'end_date_time' => {
    	datatype => 'string',
    	base_name => 'end_date_time',
    	description => 'end date time with offset like this 1970-01-01T01:00+01:00',
    	format => '',
    	read_only => '',
    		},
    'arr_date_time' => {
    	datatype => 'string',
    	base_name => 'arr_date_time',
    	description => 'arrival date time with offset like this 1970-01-01T01:00+01:00',
    	format => '',
    	read_only => '',
    		},
    'waiting_time' => {
    	datatype => 'int',
    	base_name => 'waiting_time',
    	description => 'waiting time at this activity in seconds',
    	format => '',
    	read_only => '',
    		},
    'preparation_time' => {
    	datatype => 'int',
    	base_name => 'preparation_time',
    	description => 'preparation time at this activity in seconds',
    	format => '',
    	read_only => '',
    		},
    'distance' => {
    	datatype => 'int',
    	base_name => 'distance',
    	description => 'cumulated distance from start to this activity in m',
    	format => '',
    	read_only => '',
    		},
    'driving_time' => {
    	datatype => 'int',
    	base_name => 'driving_time',
    	description => 'driving time of driver in seconds',
    	format => '',
    	read_only => '',
    		},
    'load_before' => {
    	datatype => 'ARRAY[int]',
    	base_name => 'load_before',
    	description => 'Array with size/capacity dimensions before this activity',
    	format => '',
    	read_only => '',
    		},
    'load_after' => {
    	datatype => 'ARRAY[int]',
    	base_name => 'load_after',
    	description => 'Array with size/capacity dimensions after this activity',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'type' => 'string',
    'id' => 'string',
    'location_id' => 'string',
    'address' => 'Address',
    'arr_time' => 'int',
    'end_time' => 'int',
    'end_date_time' => 'string',
    'arr_date_time' => 'string',
    'waiting_time' => 'int',
    'preparation_time' => 'int',
    'distance' => 'int',
    'driving_time' => 'int',
    'load_before' => 'ARRAY[int]',
    'load_after' => 'ARRAY[int]'
} );

__PACKAGE__->attribute_map( {
    'type' => 'type',
    'id' => 'id',
    'location_id' => 'location_id',
    'address' => 'address',
    'arr_time' => 'arr_time',
    'end_time' => 'end_time',
    'end_date_time' => 'end_date_time',
    'arr_date_time' => 'arr_date_time',
    'waiting_time' => 'waiting_time',
    'preparation_time' => 'preparation_time',
    'distance' => 'distance',
    'driving_time' => 'driving_time',
    'load_before' => 'load_before',
    'load_after' => 'load_after'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;

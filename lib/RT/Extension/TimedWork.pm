use strict;
use warnings;
package RT::Extension::TimedWork;

our $VERSION = 0.4;

use RT::Config;

$RT::Config::META{CountTimeWorked} = {
    Section         => 'Ticket display',      #loc
    Overridable     => 1,
    SortOrder       => 8.2,
    Widget          => '/Widgets/Form/Boolean',
    WidgetArguments => {
        Description => 'Automatically count Time Worked',    #loc
    },
};

=head1 NAME

RT-Extension-TimedWork - Count Time Worked on Ticket Pages

=head1 INSTALLATION 

=over

=item perl Makefile.PL

=item make

=item make install

May need root permissions

=item Edit your /opt/rt4/etc/RT_SiteConfig.pm

Add this line:

    Set(@Plugins, qw(RT::Extension::TimedWork));

or add C<RT::Extension::TimedWork> to your existing C<@Plugins> line.

Enable this by default:

    Set($CountTimeWorked, 1);

=item Clear your mason cache

    rm -rf /opt/rt4/var/mason_data/obj

=item Restart your webserver

=back

=head1 AUTHOR

Torsten Brumm <tbrumm@mac.com>


=head1 LICENSE AND COPYRIGHT

This software is Copyright (c) 2012 Best Practical Solutions, LLC

This is free software, licensed under: 
The GNU General Public License, Version 2, June 1991

=cut


1;


package RT::Transaction;

no warnings qw/redefine/;

$_BriefDescriptions{'Worklog'} = sub {
    my $self = shift;
    return $self->loc('Worked (Page: [_1])', $self->Data);

};


1;

package App::lcpan::CmdBundle::cpanlists;

# DATE
# VERSION

1;
# ABSTRACT: lcpan subcommands related to Acme::CPANLists

=head1 SYNOPSIS

Install this distribution, then the lcpan subcommands below will be available:

 # List Acme::CPANLists modules available on CPAN
 % lcpan cpanlists-mods


=head1 DESCRIPTION

This distribution packages several lcpan subcommands related to
L<Acme::CPANLists>. More subcommands will be added in future releases.

Some ideas:

B<cpanlists-stats>. Number of modules. But we will want to also know the number
of lists, total number of entries, average number of entries per list, average
number of lists per modules.

Perhaps an indexing hook could be added, so that lcpan indexes the lists
themselves? To be safer, an Acme::CPANLists module could export the lists to a
JSON, so lcpan does not have to load the module.

The indexing part could be modularized, so we can have a SQLite database
containing list information without having to have lcpan, because lcpan database
is huge.

Or (easier)... lcpan could just call this indexer. The cpanlists indexer indexes
to a separate SQLite database. But note that the cpanlists indexer *will*
eval/load the modules.


=head1 SEE ALSO

L<lcpan>

L<Acme::CPANLists> and L<acme-cpanlists>

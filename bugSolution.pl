Several methods can ensure ordered iteration of hash keys in Perl:

1. **Using `sort`:** Sort the keys before iteration:

```perl
my %hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3,
);

for my $key (sort keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}
```

This will print the keys in lexicographical order.

2. **Using `Tie::IxHash`:** Use a tied hash that maintains insertion order:

```perl
use Tie::IxHash;

my %hash;
tie %hash, 'Tie::IxHash';

%hash = (
    'a' => 1,
    'b' => 2,
    'c' => 3,
);

for my $key (keys %hash) {
    print "Key: $key, Value: $hash{$key}\n";
}
```

This will print the keys in the order they were added to the hash. 

3. **Using a different data structure:** If order is crucial, consider using an array of key-value pairs or a different data structure that maintains order inherently.
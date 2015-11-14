chef-solr-53 Cookbook
=====================
Installs solr versions greater then 5.2

Requirements
------------
#### packages
- `java` - chef-solr-53 needs java to run solr

Attributes
----------

#### chef-solr-53::default
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['solr']['version']</tt></td>
    <td>String</td>
    <td>Solr version to install</td>
    <td><tt>"5.3.1"</tt></td>
  </tr>
</table>

Usage
-----
#### chef-solr-53::default

Just include `chef-solr-53` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[chef-solr-53]"
  ]
}
```

Contributing
------------
Github https://github.com/dicetrash/chef-solr-53

e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

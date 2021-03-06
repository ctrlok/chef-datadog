include_recipe "datadog::dd-agent"

# Monitor mongo
#
# node.set['datadog']['mongo']['instances'] = [
#   {
#     'host' => 'localhost',
#     'port' => '27017'
#   }
# ]

package "python-setuptools"

easy_install_package "pymongo"

datadog_monitor "mongo" do
  instances node["datadog"]["mongo"]["instances"]
end

##############################################################################
# Date Created: 2022-06-1
# Last Update:  2022-06-1
# Copyright (c) 2022, Anupam Pushkar
# Author: Anupam Pushkar
# License: Cloud4C
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
##############################################################################

# Begin Providers section

# Configure the Azure provider
# Version numbers are the latest on 2022-06-01
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.77"
    }
  }

  required_version = ">= 1.0.7"
}

provider "azurerm" {
  features {}
}

# Begin Resource section

# Declare the Virtual Machine Resource
data "azurerm_virtual_machine" "vm" {
  name                = var.virtual-machine-name1
  resource_group_name = var.resource-group-name
}

# Declare the Lock Resource
resource "azurerm_management_lock" "vm" {
  name       = var.lock-name
  lock_level = var.lock-level
  notes      = var.lock-notes
  scope      = data.azurerm_virtual_machine1.vm.id
}

# Begin Outputs section

output "virtual-machine-id" {
  value = data.azurerm_virtual_machine.vm.id
}
output "vm-lock-id" {
  value = azurerm_management_lock.vm.id
}
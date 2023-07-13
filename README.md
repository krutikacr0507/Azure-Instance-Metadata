# Azure-Instance-Metadata
The script can be used to Query Azure Metadata. The user can keep specifying the metadata including any subcategories until he types "exit" to exit the querying.

Steps to Use:
1. Place the script in the azure VM
2. Make the script executable by running "chmod +x <script.sh>
3. Run the script ./<script.sh>

Sample run:
1. When the script executes, it displays the metadata categories that the user can view and then type the same under "Enter the data key(or 'exit' to quite) here" from the list
```
	Type the meta-data/meta-data key you are looking for from the below list:

  compute
  storage
  networking

	Enter the data key(or 'exit' to quit) here:

```
2. Give input for example "version". As this does not have any sub arguments you will get a list of versions as the output.
3. For querying a specific say instance metadata key,For example, the location attribute under the "compute" resource, you need to provide the value like "compute/location"

Note: The user can enter another data key value after getting the value from a previous run until he types "exit" when the text "Enter the data key(or 'exit' to quit) here:" appears


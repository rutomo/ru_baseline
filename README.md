# ru_baseline Cookbook

This cookbook is to provide three resources to prepare your linux box

Resource: Admin
This resource to setup your sudo user account with passwordless authentication
<table>
  <tr>
    <th>Variable Name</th>
    <th>Type</th>
    <th>Description</th>
    <th>Required</th>
  </tr>
  <tr>
    <td><tt>username</tt></td>
    <td>String</td>
    <td>Your Default Sudo Username </td>
    <td><tt>Yes</tt></td>
  </tr>
  <tr>
    <td><tt>public_keys</tt></td>
    <td>String</td>
    <td>Public Key for your username to allow passwordless authentication</td>
    <td><tt>Yes</tt></td>
  </tr>
</table>

Resource: Network
This resource is to setup your static IP
<table>
  <tr>
    <th>Variable Name</th>
    <th>Type</th>
    <th>Description</th>
    <th>Required</th>
  </tr>
  <tr>
    <td><tt>username</tt></td>
    <td>String</td>
    <td>Your Default Sudo Username </td>
    <td><tt>Yes</tt></td>
  </tr>
  <tr>
    <td><tt>public_keys</tt></td>
    <td>String</td>
    <td>Public Key for your username to allow passwordless authentication</td>
    <td><tt>Yes</tt></td>
  </tr>
</table>

Resource: SMB
This resource is to mount your network share
<table>
  <tr>
    <th>Variable Name</th>
    <th>Type</th>
    <th>Description</th>
    <th>Required</th>
  </tr>
  <tr>
    <td><tt>username</tt></td>
    <td>String</td>
    <td>Your Default Sudo Username </td>
    <td><tt>Yes</tt></td>
  </tr>
  <tr>
    <td><tt>public_keys</tt></td>
    <td>String</td>
    <td>Public Key for your username to allow passwordless authentication</td>
    <td><tt>Yes</tt></td>
  </tr>
</table>

## Requirements

This cookbook only tested in Ubuntu 14.04 but it should work in other debian/ubuntu based linux distro.

e.g.
### Platforms

- Debian/Ubuntu

### Chef

- Chef 12.0 or later

### Cookbooks

## Attributes

There's no default attributes

### ru_baseline::default

## Usage

### ru_baseline::default

## License and Authors

Authors: Rinaldi Utomo

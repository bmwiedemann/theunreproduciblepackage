#
# spec file for package theunreproduciblepackage
#
# Copyright (c) 2024 SUSE LLC
#
# All modifications and additions to the file contributed by third parties
# remain the property of their copyright owners, unless otherwise agreed
# upon. The license for this file, and modifications and additions to the
# file, is the same license as for the pristine package itself (unless the
# license for the pristine package is not an Open Source License, in which
# case the license is the MIT License). An "Open Source License" is a
# license that conforms to the Open Source Definition (Version 1.9)
# published by the Open Source Initiative.

# Please submit bugfixes or comments via https://bugs.opensuse.org/
#


Name:           theunreproduciblepackage
Version:        1.0.1
Release:        0
Summary:        Demonstrator for sources of non-determinism
License:        MIT
URL:            https://github.com/bmwiedemann/theunreproduciblepackage/
Source:         %name-%version.tar
BuildRequires:  gcc
BuildRequires:  hostname
BuildRequires:  make
BuildRequires:  ruby

%description
The Unreproducible Package
is meant as a practical way to demonstrate the various ways that software can break reproducible builds using just low level primitives without requiring external existing programs that implement these primitives themselves.

It is structured so that one subdirectory demonstrates one class of issues in some variants observed in the wild.

See https://reproducible-builds.org/ for background info.

%prep
%autosetup -p1

%build
%make_build

%install
%make_install

%post
%postun

%files
%license COPYING
%doc README.md
%doc out

%changelog


X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2026/08/13/14
Message-ID: <58451fac-21c6-44c3-9df9-0059d5ac961e@jvf.cc>
Date: Thu, 13 Aug 2026 13:42:03 -0700
From: Jay Faulkner <jay@....cc>
To: oss-security@...ts.openwall.com
Subject: [OSSN-0107] Ironic-Python-Agent: Container HardwareManager Security Model Misimplemented
Content-Type: text/plain; charset=utf-8

Ironic Python Agent Container HardwareManager Security Misimplemented
---

### Summary ###
Ironic Python Agent's ContainerHardwareManager plugin, shipped in
2025.2, was merged with a misimplemented security model.

Ironic developers have pushed an updated version of this feature,
including patches for Ironic and Ironic Python Agent, with properly
implemented security controls. These patches will not be universally
backported as they are not backwards-compatible.

### Affected Services / Software ###
- ironic-python-agent: >=11.0.0, <12.0.1

### Discussion ###
The Ironic Python Agent uses plugins called HardwareManagers (HWMs)
to expose new in-band steps for Ironic cleaning, servicing,
or deployment.

In the 2025.2 release, a Container HWM was added, giving operators
who added a container runner (such as ``podman`` or ``docker``) to
their ramdisk the option to download and execute containers as
Ironic steps.

This initial implementation had several security flaws and was
implemented in such a way that we could not backport fixes without
breaking existing deployments. These issues included ignoring
the value of the ``[container]/allow_arbitrary_containers`` safety
mechanism.

### Recommended Actions ###
* Operators who are using OpenStack-supplied ramdisks are not
   vulnerable. These images, for the impacted releases, do not come
   with ``podman`` or ``docker`` installed, disabling the feature.
   You are secure without taking any action and will upgrade into
   the fixed version in OpenStack 2026.2 or later.

* Operators who are using ramdisks with ``docker`` or ``podman``
   installed, for example, via the ``ironic-python-agent-podman``
   element in ``ironic-python-agent-builder`` but are not interested
   in the Container HWM should add ``deploy.container_clean_step``
   and ``deploy.generic_container_step`` to
   ``[api]/disallow_service_steps``, ``[api]/disallow_clean_steps``,
   and ``[api]/disallow_deploy_steps``. This will disable the insecure
   code. Patches to add the ``disallow_*_steps`` options are available
   in OSSA-2026-025.

* Operators currently using the Container HWM or who wish to use
   it should backport the patches from
   https://review.opendev.org/q/hashtag:%22container-hwm-patches%22
   to the branch they are currently using. Then, evaluate your use
   case against the updated documentation
https://docs.openstack.org/ironic/latest/admin/container-based-steps.html
   to ensure the changes were not breaking for any existing deployment.

### Credits ###
- Tuomo Tanskanen, Ericsson Software Technology (Metal3.io Security Team)
- Riccardo Pittau, Red Hat (Metal3.io Security Team)

### Contacts / References ###
Authors:
- Jay Faulkner, G-Research OSS

This OSSN: https://wiki.openstack.org/wiki/OSSN/OSSN-0107
Original Launchpad bug: https://bugs.launchpad.net/ironic/+bug/2160143
Mailing List : [security-sig] tag on openstack-discuss@...ts.openstack.org
OpenStack Security : https://security.openstack.org/
CVE: none


Download attachment "OpenPGP_signature.asc" of type "application/pgp-signature" (496 bytes)

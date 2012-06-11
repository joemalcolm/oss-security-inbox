X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/06/11/2
Message-ID: <20120611162944.GM28152@dhcp-25-225.brq.redhat.com>
Date: Mon, 11 Jun 2012 18:29:45 +0200
From: Petr Matousek <pmatouse@...hat.com>
To: oss-security@...ts.openwall.com
Subject: CVE request -- libvirt: address bus= device= when identicle vendor ID/product IDs usb devices attached are ignored
Content-Type: text/plain; charset=utf-8

Description of the problem:
libvirt ignores address bus= device= when identicle vendor
ID/product IDs usb devices attached with either virsh or virt-manager.

As a consequence, wrong USB device can be assigned to the wrong guest.

References and proposed upstream patch:
https://www.redhat.com/archives/libvir-list/2012-April/msg01494.html

Thanks,
-- 
Petr Matousek / Red Hat Security Response Team

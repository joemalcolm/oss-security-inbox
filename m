X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2023/06/06/5
Message-ID: <b8241525-7d3d-ada1-ee36-46d711722c53@apache.org>
Date: Tue, 6 Jun 2023 11:01:30 -0700
From: Michael Jumper <mjumper@...che.org>
To: Demi Marie Obenour <demi@...isiblethingslab.com>
Cc: oss-security@...ts.openwall.com, security@...camole.apache.org
Subject: Re: [SECURITY] CVE-2023-30576: Apache Guacamole: Use-after-free in handling of RDP audio input buffer
Content-Type: text/plain; charset=utf-8

On 6/6/23 10:34, Demi Marie Obenour wrote:
> On Tue, Jun 06, 2023 at 10:12:29AM -0700, Michael Jumper wrote:
>> Severity: moderate
>> Base CVSS Score: 6.8 (AV:N/AC:H/PR:L/UI:N/S:U/C:H/I:H/A:N)
> 
> Why is this A:N ...

The issue in question has no impact on the availability of a deployed 
instance of the service.

> ... and AC:H?

A successful attack in this case would depend on a complex series of 
factors and non-deterministic events outside the control of the attacker.

- Mike

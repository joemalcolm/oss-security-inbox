X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2011/11/01/5
Message-ID: <CAJzxamJXJbT5aaui=ed19OPB=gjchjXZeJ1D01m7WQko4hEOFg@mail.gmail.com>
Date: Wed, 2 Nov 2011 04:11:28 +1100
From: David Black <disclosure@....org>
To: oss-security <oss-security@...ts.openwall.com>
Subject: CVE request for Django-piston and Tastypie
Content-Type: text/plain; charset=utf-8

"It was discovered that both Piston and Tastypie share a similar
vulnerability with respect to their de-serialization of YAML post
data. Both Piston and Tastypie used the yaml.load method, which is
unsafe. In certain circumstances this could be used to allow remote
execution of arbitrary code." [0]

Can a CVE be assigned to both Tastypie and Django-piston regarding
these issues ?


[0] https://www.djangoproject.com/weblog/2011/nov/01/piston-and-tastypie-security-releases/

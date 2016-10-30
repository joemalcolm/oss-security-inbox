X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1275" "Sunday" "30" "October" "2016" "15:46:58" "-0400" "cve-assign@mitre.org" "cve-assign@mitre.org" "<4b48e4f3ed994d29993afa0620332fe9@imshyb02.MITRE.ORG>" "33" "[oss-security] Re: gajim otr plugin cleartext leak" nil nil nil "10" "2016103019:46:58" "[oss-security] Re: gajim otr plugin cleartext leak" (number mark "U       cve-assign@m Oct 30   33/1275  " thread-indent "\"[oss-security] Re: gajim otr plugin cleartext leak\"\n") "<20161030153744.1fc6348e@pc1>" ("<20161030153744.1fc6348e@pc1>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 5349 invoked by uid 550); 30 Oct 2016 19:47:12 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5215 invoked from network); 30 Oct 2016 19:47:10 -0000
From: <cve-assign@mitre.org>
To: <hanno@hboeck.de>
CC: <cve-assign@mitre.org>, <oss-security@lists.openwall.com>
In-Reply-To: <20161030153744.1fc6348e@pc1>
Message-ID: <4b48e4f3ed994d29993afa0620332fe9@imshyb02.MITRE.ORG>
Date: Sun, 30 Oct 2016 15:46:58 -0400
MIME-Version: 1.0
Content-Type: text/plain
Subject: [oss-security] Re: gajim otr plugin cleartext leak

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA256

> https://trac-plugins.gajim.org/ticket/145
> https://trac-plugins.gajim.org/changeset/c7c2e519ed63377bc943dd01c4661b0fe49321ae

>> Fix leaking cleartext when using XHTML - Fixes #145
>> gotr/otrmodule.py

Use CVE-2016-9107.

- -- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iQIcBAEBCAAGBQJYFkuXAAoJEHb/MwWLVhi2KSIP/0rIgUof1ST+5BnxeCXgC/cf
6voDeazO/NdxnU5m4xXNV/csdxuPY939YUI1OMuwfCz9YfceIXlGNVFXwQztgeHu
YW4dsgA+v8xud9v2t3fnFLgl20+WALJrl8qWc2OMAklw3H91sLFnzjrlZHAMlIpB
Os68Be99eBlq5FfoGcRfOq45wV08O7NlAMStYua+N8QBWm8dcfTu4UkwjCYnJrm7
8P9O8gK1KGGwu+ngGnrJZcY4uu52g8dQ0iCOu1AedxpNsyLLNmf0XGKYBfaAGSoe
WaPlF2mV2iXUXjlIuPVWgKpjau/2lHO7S2OyhHohxVYCGTOrte2X3rFt7ExVhfOH
tBA5E/5kisM2veqLp4eWTcTwQP5GjehVlkXF7VdKuQmJIEo5RckDGrcI4mWRXgI6
PFIkse8N7HIrYRh1igHY8Ttzdmv7ZSWejEXI+/kjCVCHRcCczxuXsG3ejPAjWEkQ
KYXM3g4cbk6jE4nY798WEL9JcN3C3ybDzu0sUh9qQkl7y8WR7xor3ovGyrJg/7l5
DfOYiaGTKgwQuUle2V16ZbegKyIBNjk2RJmV7xQhFDaxhi7aEfVXgbUaW6txZOvq
cCAqUlADh5EjjCMP7ryyrtBj+rvefwXwY6Q9sHlNJzpG4MR2vMospSv+xFx8nLzj
0YLvtzYzc664dGYMBth9
=XAI4
-----END PGP SIGNATURE-----

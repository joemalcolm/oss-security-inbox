X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2018/03/15/2
Message-Id: <1521122159.1270614.1304206128.19D1CFEA@webmail.messagingengine.com>
Date: Thu, 15 Mar 2018 13:55:59 +0000
From: Thomas Kluyver <thomas@...yver.me.uk>
To: oss-security@...ts.openwall.com
Cc: security <security@...thon.org>, MinRK <benjaminrk@...il.com>, jkamens@...ntopian.com, ssanderson@...ntopian.com
Subject: CVE request: maliciously crafted notebook files in Jupyter
Content-Type: text/plain; charset=utf-8

Email address of requester: security@...thon.org, thomas@...yver.me.uk, benjaminrk@...il.com, jkamens@...ntopian.com, ssanderson@...ntopian.com

Software name: Jupyter Notebook (formerly IPython Notebook)
Type of vulnerability: Maliciously forged file
Attack outcome: Possible remote execution

Vulnerability: A maliciously forged notebook file can bypass sanitization to execute Javascript in the notebook context. Specifically, invalid HTML is 'fixed' by jQuery after sanitization, making it dangerous.

Affected versions:

- notebook ≤ 5.4.0

URI with issues:

- GET /notebook/**

Patches:  not yet finalised

Mitigations:

Upgrade to Jupyter notebook 5.4.1 or 5.5 once available.
If using pip,

    pip install --upgrade notebook

For conda:

    conda update conda
    conda update notebook

Vulnerability reported by vkgonka@...l.ru , via Jonathan Kamens at Quantopian


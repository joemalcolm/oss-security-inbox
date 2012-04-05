X-Archive-Source: openwall-scrape
X-Archive-Source-URL: https://www.openwall.com/lists/oss-security/2012/04/05/1
Message-ID: <20120405093027.GB18070@suse.de>
Date: Thu, 5 Apr 2012 11:30:27 +0200
From: Marcus Meissner <meissner@...e.de>
To: OSS Security List <oss-security@...ts.openwall.com>
Subject: expat hash collision fix too predictable?
Content-Type: text/plain; charset=utf-8

Hi,

while reviewing a expat regression (likely caused by the hash collision denial of service fix, but unclear)
i stumbled about the randomness it uses.

	static unsigned long
	generate_hash_secret_salt(void)
	{
	  unsigned int seed = time(NULL) % UINT_MAX;
	  srand(seed);
	  return rand();
	}

and it is seeded once at parser object creation.

This is better than not seeding, but I am not sure if it is sufficient.

Ciao, Marcus

X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1415" "Saturday" "13" "June" "2015" "11:33:51" "+0200" "Bastian Blank" "waldi@debian.org" "<20150613093351.GF11230@mail.waldi.eu.org>" "40" "[oss-security] PostgreSQL - Predictable cancel key" nil nil nil "6" "2015061309:33:51" "[oss-security] PostgreSQL - Predictable cancel key" (number mark "        waldi@debian Jun 13   40/1415  " thread-indent "\"[oss-security] PostgreSQL - Predictable cancel key\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 20291 invoked by uid 550); 13 Jun 2015 09:34:07 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 20250 invoked from network); 13 Jun 2015 09:34:02 -0000
Message-ID: <20150613093351.GF11230@mail.waldi.eu.org>
Mail-Followup-To: Bastian Blank <waldi@debian.org>,
	oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)
Date: Sat, 13 Jun 2015 11:33:51 +0200
From: Bastian Blank <waldi@debian.org>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] PostgreSQL - Predictable cancel key
To: oss-security@lists.openwall.com

Hi

PostgreSQL postmaster uses predictable random numbers from random().
The PRNG is seeded once during its lifetime with srandom().  The seed is
generated as following, also zero is explicitely excluded:

| random_seed = random_start_time.tv_usec ^
|         ((random_stop_time.tv_usec << 16) |
|          ((random_stop_time.tv_usec >> 16) & 0xffff));

So we have at most 1,000,000 different seeds.

A so called cancel key is generated with random() for every new backend
used by client connections and for autovacuum childs.  This key together
with the PID is used for asynchronous cancelation of queries in client
backends.  This values are transmitted to the client after successful
authentication.

The information needed to cancel other queries is the (sequential, at
least on Linux) pid and a predicable (secret) key.

Another set of four calles to random() are used to generate the salt for
the md5-authentication.  This value is given to the client before the
authentication.  One call per byte is done, excluding zero bytes:

| md5Salt[0] = (random() % 255) + 1;
| md5Salt[1] = (random() % 255) + 1;
| md5Salt[2] = (random() % 255) + 1;
| md5Salt[3] = (random() % 255) + 1;

Timeline:
- 2015-02-13: Reported upstream, considered no problem
- 2015-06-13: Published

Regards,
Bastian

-- 
A princess should not be afraid -- not with a brave knight to protect her.
		-- McCoy, "Shore Leave", stardate 3025.3

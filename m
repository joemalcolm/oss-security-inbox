X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["3704" "Saturday" "25" "August" "2018" "23:49:23" "+0200" "Jakub Wilk" "jwilk@jwilk.net" "<20180825214923.ppes3ivrw73mbmrm@jwilk.net>" "87" "[oss-security] Travis CI MITM RCE" "^Date:" nil nil "8" "2018082521:49:23" "[oss-security] Travis CI MITM RCE" (number mark "        jwilk@jwilk. Aug 25   87/3704  " thread-indent "\"[oss-security] Travis CI MITM RCE\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 13791 invoked by uid 550); 25 Aug 2018 21:49:38 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13752 invoked from network); 25 Aug 2018 21:49:37 -0000
Message-ID: <20180825214923.ppes3ivrw73mbmrm@jwilk.net>
Mail-Followup-To: oss-security@lists.openwall.com
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
User-Agent: NeoMutt/20180716
X-Ovh-Tracer-Id: 14908603617908021158
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: 0
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedtjedrfeejgdduieefucetufdoteggodetrfdotffvucfrrhhofhhilhgvmecuqfggjfdpvefjgfevmfevgfenuceurghilhhouhhtmecufedttdenuc
Date: Sat, 25 Aug 2018 23:49:23 +0200
From: Jakub Wilk <jwilk@jwilk.net>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Travis CI MITM RCE
To: oss-security@lists.openwall.com

Travis CI <https://travis-ci.org/> is a popular continuous integration 
service used to build and test software projects hosted at GitHub. 
(Travis itself is free software, but the primary reason I'm writing this 
is mail is that the service is used by many free software projects.)

I discovered multiple bugs in the way Travis CI uses APT and GnuPG that 
defeat the package authentication mechanism. As a consequence, the bugs 
allow man-in-the-middle attackers to execute arbitrary code in the 
context of a Travis build that uses the APT add-on.

This is probably not a big deal if use Travis CI only for running tests.  
But Travis also supports deployment (grep for “Deployments and Uploads” 
on <https://docs.travis-ci.com/>); if you entrust Travis with any 
secrets, this is bad news for you.

Here are the bugs details:

------------------------------------------------------------------------

1) On 2015-04-13, the “--force-yes” option was added to apt-get 
invocations: https://github.com/travis-ci/travis-build/pull/424

This option name doesn't sound very dangerous, but it makes APT assume 
the “yes” answer to all questions, including the question about 
installing packages that couldn't be authenticated…

On 2017-10-12, I reported this bug to the Travis CI security team.

On 2018-07-05, --force-yes was replaced with --allow-downgrades 
--allow-remove-essential --allow-change-held-packages: 
https://github.com/travis-ci/travis-build/pull/1422

I'm not sure how could this change possibly work, because APT in the 
Ubuntu versions Travis CI supports (precise, trusty) doesn't have these 
options… So a few days later --force-yes was added back: 
https://github.com/travis-ci/travis-build/pull/1433

------------------------------------------------------------------------

2) On 2017-10-12, code was added to refresh an expired signing key: 
https://github.com/travis-ci/travis-build/pull/1192

The code used 32-bit key ID to retrieve the key from the keyserver. 
I reported this on 2017-12-06: 
https://github.com/travis-ci/travis-build/pull/1269

My patch was not accepted. Instead, more generic code to refresh expired 
keys was added: https://github.com/travis-ci/travis-build/pull/1290

The new code looks like this:

    apt-key list | awk -F'[ /]+' '/expired:/{printf "apt-key adv --recv-keys --keyserver keys.gnupg.net %s\\n", $3}' | sudo sh

The “apt-key list” format varies with GnuPG version, but on Ubuntus 
Travis supports, it uses… 32-bit key IDs.

(For extra fun, this code happily executes code embedded in user IDs. 
I don't believe this is exploitable on Travis CI, though.)

Apparently some joker already exploited this bug to add their own key to 
the APT keyring <https://travis-ci.org/jwilk/testbed/jobs/420519943>:

   $ apt-key list | grep -A1 -w A15703C6
   pub   4096R/A15703C6 2016-01-11 [expires: 2020-01-05]
   uid                  MongoDB 3.4 Release Signing Key <packaging@mongodb.com>
   --
   pub   1024R/A15703C6 2016-06-25
   uid                  Totally Legit Signing Key <mallory@example.org>

I can neither confirm nor deny that it was me. It might be a mere 
coincidence that I wrote a tool to brute-force 32-bit key IDs:
https://github.com/jwilk/stopgp32

------------------------------------------------------------------------

3) For many repositories in the APT source whitelist 
<https://github.com/travis-ci/apt-source-whitelist>, the signing key is 
downloaded over HTTP. For example:

  {
    "alias": "cassandra",
    "sourceline": "deb \"http://www.apache.org/dist/cassandra/debian\" 39x main",
    "key_url": "http://ha.pool.sks-keyservers.net/pks/lookup?search=0xA278B781FE4B2BDA&op=get"
  },

-- 
Jakub Wilk

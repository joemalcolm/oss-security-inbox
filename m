X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1144" "Tuesday" "17" "March" "2015" "18:02:41" "+0100" "Peter =?UTF-8?B?S2plbGxzdHLDtm0=?=" "cap@nsc.liu.se" "<20150317180241.387a715f@yaydoe>" "27" "[oss-security] Incomplete data at nvd for CVE-2014-8159 (infiniband / verbs)" nil nil nil "3" "2015031717:02:41" "[oss-security] Incomplete data at nvd for CVE-2014-8159 (infiniband / verbs)" (number mark "        cap@nsc.liu. Mar 17   27/1144  " thread-indent "\"[oss-security] Incomplete data at nvd for CVE-2014-8159 (infiniband / verbs)\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10128 invoked by uid 550); 17 Mar 2015 17:03:59 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 9827 invoked from network); 17 Mar 2015 17:02:53 -0000
Message-ID: <20150317180241.387a715f@yaydoe>
X-Mailer: Claws Mail 3.11.1 (GTK+ 2.24.27; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Date: Tue, 17 Mar 2015 18:02:41 +0100
From: Peter =?UTF-8?B?S2plbGxzdHLDtm0=?= <cap@nsc.liu.se>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] Incomplete data at nvd for CVE-2014-8159 (infiniband / verbs)
To: oss-security@lists.openwall.com

My first post and it may not even be the right place so sorry in
advance...

Not entirely sure what to expect from the nvd site for a CVE like this
(about 1 week old counting from redhats advisory) but information is at
best incomplete at:

https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2014-8159

Here are a few problems with the info:

 * rhel6 / 2.6.32 is listed as impacted (but already the linked bz
   expands this to rhel5 and rhel7.
 * In fact this bug (as I understand it) is in all versions of the
   verbs kernel module except some point in 3.19.xxx and rhel6 updates.
   Affected list grows to:
    1) other distributions building kernel with infiniband/verbs enabled
    2) other distributions providing "external" infiniband/verbs modules
    3) other sources providing 3rd party infiniband/verbs modules
 * I know that Mellanox (found under 3 above) has released an update
   (MLNX_OFED 2.4-1) that fixes the issue, but this info is missing.
   https://community.mellanox.com/message/4401#4401

If this was not the correct place to contribute/fix information maybe
someone can point me in the correct direction.

/Peter K

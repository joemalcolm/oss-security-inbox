X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1073" "Thursday" "3" "March" "2016" "10:44:22" "+0200" "Georgi Guninski" "guninski@guninski.com" "<20160303084422.GD2384@sivokote.iziade.m$>" "35" "[oss-security] According to www.virustotal.com, lists.debian.org are hosting attachment .DOC virus" "^Date:" nil nil "3" "2016030308:44:22" "[oss-security] According to www.virustotal.com, lists.debian.org are hosting attachment .DOC virus" (number mark "        guninski@gun Mar  3   35/1073  " thread-indent "\"[oss-security] According to www.virustotal.com, lists.debian.org are hosting attachment .DOC virus\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 10014 invoked by uid 550); 3 Mar 2016 08:54:55 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 3606 invoked from network); 3 Mar 2016 08:44:34 -0000
Message-ID: <20160303084422.GD2384@sivokote.iziade.m$>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
header: best read with a sniffer
Date: Thu, 3 Mar 2016 10:44:22 +0200
From: Georgi Guninski <guninski@guninski.com>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] According to www.virustotal.com, lists.debian.org are hosting
 attachment .DOC virus
To: oss-security@lists.openwall.com, cypherpunks@cpunks.org,
	debian-legal@lists.debian.org

According to www.virustotal.com, lists.debian.org 
are hosting attachment .DOC virus.

Would someone confirm or deny this?

Warning:  DO NOT OPEN THE .DOC!
Discalimer: Nothing personal against Debian

https://lists.debian.org/debian-consultants/2016/01/msg00000.html
links to:

https://lists.debian.org/debian-consultants/2016/01/docyrW4BlUhzH.doc

Submitting the last .doc URL at:
https://www.virustotal.com
and then going to:
Go to downloaded file analysis
gives:
https://www.virustotal.com/en/file/c7210dc26e00a0d9f9bf8fb3b4850d52b62bb5836a7fa34bb669fc1b1553005e/analysis/1456991242/

SHA256: 	c7210dc26e00a0d9f9bf8fb3b4850d52b62bb5836a7fa34bb669fc1b1553005e
File name: 	docyrW4BlUhzH.doc
Detection ratio: 	17 / 54

the first few results are:
AVG 	W97M/Downloader 	20160303
AVware 	Trojan-Downloader.O97M.Adnel.n (v) 	20160303
AegisLab 	W97M.Gen!c 	20160303
Arcabit 	HEUR.VBA.Trojan.e 	20160303
Avast 	VBA:Downloader-ABC [Trj] 	20160303
ESET-NOD32 	VBA/TrojanDownloader.Agent.AOM 	20160303

and some report it as clean.

The .doc is downloadable with the same checksum.

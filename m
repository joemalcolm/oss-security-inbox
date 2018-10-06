X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["606" "Saturday" "6" "October" "2018" "13:40:04" "+0200" "joernchen" "joernchen@phenoelit.de" "<20181006113958.GA29967@derpz>" "23" "[oss-security] CVE-2018-17456 Git RCE via .gitmodules" "^Date:" nil nil "10" "2018100611:40:04" "[oss-security] CVE-2018-17456 Git RCE via .gitmodules" (number mark "U       joernchen@ph Oct  6   23/606   " thread-indent "\"[oss-security] CVE-2018-17456 Git RCE via .gitmodules\"\n") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23968 invoked by uid 550); 6 Oct 2018 11:53:14 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 18157 invoked from network); 6 Oct 2018 11:40:29 -0000
Message-ID: <20181006113958.GA29967@derpz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Provags-ID: V03:K1:lkeMv2gaGujCypBVG5qxblbN4cTVKz5sifbfOASa3L5VgWZppX9
 cyud0neM5rIR5XG3G1sgwit76/8AazHK5wZ/rc/Nxu9B3Z1EbV9RlJli7nllU8n6QDjKIki
 OWs39pZfcsMcMSh5rFhRjLxtXIj/p3oNrvv8k8jFUnqylgOZaDuALfvY/ELQTcpM8Jx6QOf
 7fVjn8CYjqHcX4xPAysfg==
X-UI-Out-Filterresults: notjunk:1;V01:K0:kYsyhIw4FO8=:Ib6vZM29hlDKAnZj8y74XM
 UjfUSh1CUbJ+vYWDSqepbDOw08j/wuV86fuDtK9qhrIg7TuXHyelKzEaZAEcKo0XQYazoQSH1
 BXD6mKvfWXJKHc8cBtT/OZmtU5YS2SF729r5zmV44RhBM9XmXHJFJwKPitYk5MwXb5/1zmqgT
 mDg8a7kn22Zo2deV1sPhdvwAC1Gf2aIi/28I5n1FHC+eEh5o/ZkA0aPYySGocECV/GmKXCbkk
 5e3y3+08//pRnRUnvqQ/7XteU8WnJIIlklziVffdb2H05K1E5P6znoiqH9HRJ2xLvyZVQAs26
 3a+0t5jBi7ydzm8Ukcgr2dcp5m9/6njs06HCyS7KOhFK8LV+mO3q+j1E5SOi4SMbDtKD3j1ma
 jLbRABHvJUcGzZJW+LN7IXCWlfUiLpbS0y88LWeghwQ041iVUY6UcsWYd7HnRFWeH6xSYGj9I
 +LodkEh0xInFg++FF1Thga7+2gVeC96ZKKxsZwCsESGv2bcZxrcuMXYJNo+PnXmXd0kYSlhbs
 Iv8nEld4Q2RDPF57zr93shgxxNNHu7SZ6KCJSYJuJN9QHhj6IQFu6FLGn6NcGW1Hxo53Awr7x
 fvzbvuZ/HDMvvnrr3zk0OK0Lx57YO31SbmnQo0LGyQs9A3wM5nLiENhv/fUXj5t1R8AYbrDOu
 X3ZEQWuPi1GEi0JdjCsqWqjr94cJZak3x9uv1J6lcOww2zGOOUb+o8rJBHwWXD8pwTyU=
Date: Sat, 6 Oct 2018 13:40:04 +0200
From: joernchen <joernchen@phenoelit.de>
Reply-To: oss-security@lists.openwall.com
Subject: [oss-security] CVE-2018-17456 Git RCE via .gitmodules
To: oss-security@lists.openwall.com

Hey,

just a short heads up to oss-sec:

Git has just [0] released Versions 2.14.5, 2.15.3, 2.16.5, 2.17.2,
2.18.1, and 2.19.1 which mitigate CVE-2018-17456, an RCE issue I found
within the handling of Git submodules.

More specifically this issue allows execution of arbitrary commands via
a argument injection to subsequent `git clone` operations using the
`url` parameter in the `.gitmodules` file. 


Cheers,

joernchen

[0] https://marc.info/?l=git&m=153875888916397&w=2

--
joernchen ~ Phenoelit
<joernchen@phenoelit.de> ~ C776 3F67 7B95 03BF 5344
http://www.phenoelit.de  ~ A46A 7199 8B7B 756A F5AC

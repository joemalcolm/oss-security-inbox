X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["1103" "Sunday" "19" "July" "2020" "00:24:26" "+0200" "ali.of.south@keemail.me" "ali.of.south@keemail.me" "<MCZ-_KW--3-2@keemail.me>" "30" "[oss-security] CVE-2018-21036: Sails.js before v1.0.0-46 DoS" nil nil nil "7" "2020071822:24:26" "[oss-security] CVE-2018-21036: Sails.js before v1.0.0-46 DoS" (number mark "U       ali.of.south Jul 19   30/1103  " thread-indent "\"[oss-security] CVE-2018-21036: Sails.js before v1.0.0-46 DoS\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] CVE-2018-21036: Sails.js before v1.0.0-46 DoS" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23559 invoked by uid 550); 19 Jul 2020 08:23:50 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27687 invoked from network); 18 Jul 2020 22:24:37 -0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1595111066;
	s=s1; d=keemail.me;
	h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Cc:Date:Date:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:Sender;
	bh=XAAgma5saMgFi+U2IH2di2+Pf37VuY+hoJHCJG4w95w=;
	b=Fac0q3ZgNa/1KGXVWusGVDVe8vIByyHRfI0TO5xiIYvq33CUl/2BZGUX7QBgVvjs
	W8i3avAH4lEq6/d+Gx7Eu/KZDXJjtJui3DhDUFZy8afHZcvUUBO+LRn7UreJLpy131M
	vUzFs0USUSZ4EMGi89r67zW+utLZXb4t/DPRXrVRzHWCsXyfU1dezqrkvysgGM6qowv
	9f/tbOoBiOlS+CsEemjLfZDigbsXTWxaFjUUg/4PGI68WKDqKASw/7g+YTGz4/4HyVv
	6Yqp4uRq3NgFqZNfBNxVSi80JWV2rsZF8j5CST8m1DCZJSWwEPUsfmKBXSwin8Ley+k
	llQYWBGTpA==
Date: Sun, 19 Jul 2020 00:24:26 +0200 (CEST)
From: ali.of.south@keemail.me
To: oss-security@lists.openwall.com
Message-ID: <MCZ-_KW--3-2@keemail.me>
MIME-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_95967_2109002798.1595111066050"
Subject: [oss-security] CVE-2018-21036: Sails.js before v1.0.0-46 DoS

------=_Part_95967_2109002798.1595111066050
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello,

Sails.js (https://sailsjs.com/) <https://sailsjs.com/> before v1.0.0-46 allows attackers to cause a denial of service with a single request because there is no error handler in sails-hook-sockets to handle an empty pathname in a WebSocket request.
[Affected Product Code Base]
Sails.js - < v1.0.0-46
sails-hook-sockets - < 1.5.5

[Attack Vectors]
To exploit vulnerability, attacker should make a request with malformed URL to the socket.

[Reproducing]
1. generate a default sails app.
2. sails lift
3. open app in the browser.
4. open the browser console.
5. execute this code: io.socket.get('?').

[Reference]
- https://github.com/balderdashy/sails-hook-sockets/commit/ff02114eaec090ee51db48435cc32d451662606e
- https://github.com/balderdashy/sails-hook-sockets/commit/0533a4864b1920fd8fbb5287bc0889193c5faf44
- https://github.com/balderdashy/sails/blob/56f8276f6501a144a03d1f0f28df4ccdb4ad82e2/CHANGELOG.md

Thanks,
Ali Norouzi

------=_Part_95967_2109002798.1595111066050--

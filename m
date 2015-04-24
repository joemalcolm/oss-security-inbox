X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["669" "Friday" "24" "April" "2015" "09:50:11" "+0200" "Florian Weimer" "fweimer@redhat.com" "<5539F5B3.8090501@redhat.com>" "18" "Re: [oss-security] tlsdate havoc ahead - default host randomizes tls timestamps" nil nil nil "4" "2015042407:50:11" "[oss-security] tlsdate havoc ahead - default host randomizes tls timestamps" (number mark "        fweimer@redh Apr 24   18/669   " thread-indent "\"Re: [oss-security] tlsdate havoc ahead - default host randomizes tls timestamps\"\n") "<20150423173748.2c2a53d2@pc1.fritz.box>" ("<20150423173748.2c2a53d2@pc1.fritz.box>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 23886 invoked by uid 550); 24 Apr 2015 07:50:26 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 23868 invoked from network); 24 Apr 2015 07:50:25 -0000
Message-ID: <5539F5B3.8090501@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
References: <20150423173748.2c2a53d2@pc1.fritz.box>
In-Reply-To: <20150423173748.2c2a53d2@pc1.fritz.box>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
X-Scanned-By: MIMEDefang 2.68 on 10.5.11.24
Date: Fri, 24 Apr 2015 09:50:11 +0200
From: Florian Weimer <fweimer@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] tlsdate havoc ahead - default host randomizes
 tls timestamps
To: oss-security@lists.openwall.com

On 04/23/2015 05:37 PM, Hanno Böck wrote:

> And there is some work done in the IETF to create a secure version of
> ntp:
> 
> https://tools.ietf.org/html/draft-ietf-ntp-network-time-security-08
> https://tools.ietf.org/html/draft-ietf-ntp-cms-for-nts-message-03
> https://tools.ietf.org/html/draft-ietf-ntp-using-nts-for-ntp-00

I've been arguing to replace the custom security protocol they have
invented with DTLS.  The discussion is happening on the IETF NTP working
group mailing list: <http://lists.ntp.org/listinfo/ntpwg>  (Note:
somewhat unusual for IETF lists, it's moderated, for first-time posters
at least.)


-- 
Florian Weimer / Red Hat Product Security

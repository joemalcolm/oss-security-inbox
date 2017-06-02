X-VM-v5-Data: ([nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["2084" "Friday" "2" "June" "2017" "10:52:08" "-0600" "kseifried@redhat.com" "kseifried@redhat.com" "<85839596-be62-7c0f-dc7a-49d0cad4f0f9@redhat.com>" "46" "Re: [oss-security] What happens in order to get CVE numbers" "^Date:" nil nil "6" "2017060216:52:08" "[oss-security] What happens in order to get CVE numbers" (number mark "        kseifried@re Jun  2   46/2084  " thread-indent "\"Re: [oss-security] What happens in order to get CVE numbers\"\n") "<nrmsHhyyTCZ9wdWRLqD7UlQdEzusSmlviPEAI5nPS3AlPASZE1lcA4vwJkUp4a-_zDY398M6MWHAodgKRFV4Go153IFdFvXQs80Ibv-O6so=@protonmail.com>" ("<nrmsHhyyTCZ9wdWRLqD7UlQdEzusSmlviPEAI5nPS3AlPASZE1lcA4vwJkUp4a-_zDY398M6MWHAodgKRFV4Go153IFdFvXQs80Ibv-O6so=@protonmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0001
X-Mozilla-Status2: 00000000
Received: (qmail 7844 invoked by uid 550); 2 Jun 2017 16:52:23 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 7820 invoked from network); 2 Jun 2017 16:52:22 -0000
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:reply-to:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=8ZjKC8mQOuYCXMlN3TI00zbN/ausvnqWAuaBu/BKx8c=;
        b=pHei7Dtv4G1p9wRH2fl6nYU4dGJgBZwBmB4rxCLG+jBskZaQvOoq3BejrEzkXDfhPU
         hguaRlc8OZ+5QkUerVKs5aUCxFN3anzLl0zyT4oE9wfxRg2o7vl8v8jVZz9q2xO6/S5+
         LtKQDPj5B8l7KGikSzexukVGB4z1to8+3DDy1Fshw+NjJMRIBwWTtqvjIf92mvNspboX
         q8y61vmRZVjLl7R/PubjMUx53Xy9OtXmXDyCgplZWe+RBntp812D45yxvW7pckglgXCM
         b0C0ef5B02YL1vQkgv1KhVOAdG6ka/O21nLVkieevYGQ31Oiibrf5CvWfwq+l+ztgzW2
         E8zA==
X-Gm-Message-State: AKS2vOwqkp7emAq+vmcvMUSDgUuqLe4RRdvoxG4uv2RLfwl/QdRkQYDp
	0ePDJXkgfRug/RONvBey3w==
X-Received: by 10.55.87.67 with SMTP id l64mr126488qkb.211.1496422330820;
        Fri, 02 Jun 2017 09:52:10 -0700 (PDT)
References: <nrmsHhyyTCZ9wdWRLqD7UlQdEzusSmlviPEAI5nPS3AlPASZE1lcA4vwJkUp4a-_zDY398M6MWHAodgKRFV4Go153IFdFvXQs80Ibv-O6so=@protonmail.com>
Message-ID: <85839596-be62-7c0f-dc7a-49d0cad4f0f9@redhat.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.1.0
MIME-Version: 1.0
In-Reply-To: <nrmsHhyyTCZ9wdWRLqD7UlQdEzusSmlviPEAI5nPS3AlPASZE1lcA4vwJkUp4a-_zDY398M6MWHAodgKRFV4Go153IFdFvXQs80Ibv-O6so=@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Date: Fri, 2 Jun 2017 10:52:08 -0600
From: "kseifried@redhat.com" <kseifried@redhat.com>
Reply-To: oss-security@lists.openwall.com
Subject: Re: [oss-security] What happens in order to get CVE numbers
To: oss-security@lists.openwall.com, Qhdwns123 <qhdwns123@protonmail.com>

When to ask for a CVE Identifier

CVE Identifiers (also called “CVE names,” “CVE numbers,” “CVE-IDs,” and
“CVEs”) are unique, common identifiers for publicly known information
security vulnerabilities.

In other words a CVE is an identifier for something that we know is a
vulnerability (in other words we have to be sure that it is a
vulnerability and not just a hardening issue), and the issue will become
public at some point.

In other words as soon as you know something is a security issue, and
you can be reasonably certain that the issue will be made public (which
may or may not include fixing it) you can get a CVE. In fact it’s much
better to get a CVE as early as possible in the process, then the CVE
can be used in things like commits that fix the issue, it can be applied
to bug entries/issues, and ideally used in Change Logs or release notes
when the fix is released.

As for who exactly asks for the CVE there are a few simple rules:

1) If the software belongs to an entity that is a CNA (CVE Numbering
Authority, e.g. Red Hat, Apache, Microsoft) then you MUST ask the CNA to
assign the CVE first, if this does not work you can go to the CNA’s
parent (e.g. MITRE) and then ask them.

2) If the software belongs to an entity that is NOT a CNA (e.g. most
projects) then for Open Source you can either ask the DWF, or MITRE, and
for closed source you can ask MITRE. Either the researcher or the
project can ask for the CVE, but we do ask that you coordinate so that
multiple requests are not sent in.

TL;DR: Anyone can ask for the CVE, we only ask that the request be
reasonably certain that it is an actual vulnerability and that they
ideally coordinate with the project responsible for the software. We
also suggest that the CVE be requested as early on as possible to make
coordination and identification easier.

DWF: https://iwantacve.org/
MITRE: https://cveform.mitre.org/

-- 

Kurt Seifried -- Red Hat -- Product Security -- Cloud
PGP A90B F995 7350 148F 66BF 7554 160D 4553 5E26 7993
Red Hat Product Security contact: secalert@redhat.com

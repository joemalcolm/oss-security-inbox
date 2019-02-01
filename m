X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["881" "Friday" "1" "February" "2019" "13:27:21" "+0100" "Salvatore Bonaccorso" "carnil@debian.org" "<20190201122721.GA17576@eldamar.local>" "28" "Re: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie" "^Date:" nil nil "2" "2019020112:27:21" "[oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie" (number mark "U       carnil@debia Feb  1   28/881   " thread-indent "\"Re: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag missing from session cookie\"\n") "<CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>" ("<CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 13939 invoked by uid 550); 1 Feb 2019 12:27:36 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Received: (qmail 13919 invoked from network); 1 Feb 2019 12:27:36 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=c9DKxqF2bSVuUEM8z+PSQzYoOkJSUnVAcNk3WfO8Gok=;
        b=oP/Vu4kO1zyEc68+fu1OwYo52gWPNFxXeso5NvydFkeR2v7qKH7YxGkye/ATw4Zs27
         FS92W0v3L8QrnzWUU1VoLEYDppq5H3+4eKDIpu9gTgOezTmJlcy4bUpQuJBUJ69yVeal
         pdQeiOt9bMRUUmLr1dmZNrsg/4jui5f2ZWf9euL4UYNCPvJ8UMOGTuklpJr30JkrFWlO
         e8/89GahaU04nr8TdTB59yzpQd2TMyjOvuDgALJo9QPHuCxlcHSlG7HhL9LYSX9w06DH
         w1FSgtN2gy6S8BgxOedBeUaP0JcBC0aGM7OqF0Fdy6ELLUo10/FytdM4U/SrxESQ66d3
         F5jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:from:to:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=c9DKxqF2bSVuUEM8z+PSQzYoOkJSUnVAcNk3WfO8Gok=;
        b=PljRXnuZNoTwNXJyQbvxZI5OpZSxIc2ydovP1Bp96KMpE2uxmKzlQi4fOm7IEr57jb
         ehDLmXVZjEcPNNv2aCsjwh1O6pfT85euFE5ZKOLlzXZR3NWNjzZ0cMTbKfntreuexFGF
         dQsS37S/+bcY4F58M5ZmDA3w5XvUM1/oqie4e7q4TQCjbM9XBsqKtBJXZca2k0OWTnPT
         SORErtvQhw9VmHBJ0kPIf19o64tME/ULcxJy79IDbK1anYR7PFg5oDVk4w0icGtksiOT
         b9YWOjOiDXH1CtTHaNMfUcxa/0RzwYxifCSRQToW86fGfOMu/vOfZY5Or6n5S030GDZh
         TyJA==
X-Gm-Message-State: AJcUukcG29xeGsbDJzCohes0wHCQ6aZbjFzlco+oeRUc4FKQP+Qnm4oz
	5AljbI9EwnlNdcL3Jawq6bA=
X-Google-Smtp-Source: ALg8bN4nxAb3ZQlpZTm4iQHLnDccJNR5GVRf8sXzRM1tF2pTQ2GBB2sB3DjLI0y00fPyrDYjOP2nQA==
X-Received: by 2002:aa7:ccc8:: with SMTP id y8mr36683275edt.118.1549024044714;
        Fri, 01 Feb 2019 04:27:24 -0800 (PST)
Message-ID: <20190201122721.GA17576@eldamar.local>
References: <CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CALKeL-M8wreyyeUigfN=au1foco8K1fJXDEe-5EEEjXoYzsbiA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Date: Fri, 1 Feb 2019 13:27:21 +0100
From: Salvatore Bonaccorso <carnil@debian.org>
Reply-To: oss-security@lists.openwall.com
Sender: Salvatore Bonaccorso <salvatore.bonaccorso@gmail.com>
Subject: Re: [oss-security] CVE-2018-1340: Apache Guacamole: Secure flag
 missing from session cookie
To: oss-security@lists.openwall.com

Hi Mike,

On Wed, Jan 23, 2019 at 02:21:30PM -0800, Mike Jumper wrote:
> CVE-2018-1340: Secure flag missing from Apache Guacamole session cookie
> 
> Versions affected:
> Apache Guacamole 0.9.4 through 0.9.14
> 
> Description:
> Prior to 1.0.0, Apache Guacamole used a cookie for client-side storage
> of the user's session token. This cookie lacked the "secure" flag,
> which could allow an attacker eavesdropping on the network to
> intercept the user's session token if unencrypted HTTP requests are
> made to the same domain.
> 
> Mitigation:
> Users of Apache Guacamole 0.9.14 or older should upgrade to 1.0.0.
> 
> Credit:
> We would like to thank Ross Golder for reporting this issue.

Would it be possible to confirm, is this 
https://issues.apache.org/jira/browse/GUACAMOLE-549
https://github.com/apache/guacamole-client/commit/884a9c0ee987f9cb49a69
?

Regards,
Salvatore

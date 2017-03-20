X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["656" "Monday" "20" "March" "2017" "16:33:17" "+0100" "Ailin Nemui" "ailin.nemui@gmail.com" "<1490023997.1783.5.camel@gmail.com>" "24" "[oss-security] Re: CVE Request: Irssi use after free in netjoin condition (2017/03)" nil nil nil "3" "2017032015:33:17" "[oss-security] Re: CVE Request: Irssi use after free in netjoin condition (2017/03)" (number mark "U       ailin.nemui@ Mar 20   24/656   " thread-indent "\"[oss-security] Re: CVE Request: Irssi use after free in netjoin condition (2017/03)\"\n") "<1489267555.30133.7.camel@gmail.com>" ("<1489267555.30133.7.camel@gmail.com>") nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 28396 invoked by uid 550); 20 Mar 2017 15:44:19 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 12221 invoked from network); 20 Mar 2017 15:33:30 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=xe/qoG8nCRKeMWVLTXyaVcYFS0yZDJz0jx+pGAgMaoY=;
        b=S/NFtR90HKpSH3DaqEijB+pmo17A7tZiXwKIu3+lPHyBvlKlZdue9868vGvaUddfg0
         1y97kF6/QvH/74C9x9e5Dwxl7pC4ob8EidzE79zW0NCJGa+uaT+0r/qifyd1as0Tc7aT
         69f5L7w3zdGaUmm7CIR0xmyVX8USmQLualIxHRU1HgsrEMuTDw1VerKckFMFj0JAK/mA
         xzg12zT/rI+VA90bmjtmTfVX37omSV7L/loRP0Lx0x+Dc42C41pAO9382QWjohx67O1w
         G+1t2dFw5+oNXAm1tlKsPCvlVcdym6QERuKlBedXqdj7LGc4tfuSN7SyVzxIF2w82BS4
         qX7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xe/qoG8nCRKeMWVLTXyaVcYFS0yZDJz0jx+pGAgMaoY=;
        b=RnsBH9kjgbKTw3bU/DKPvoqO5PKiA15YzoaAZYqXwtDcAbrQE4igsfrio6tYH6kgFB
         0NOPuPfsYZLbpBR0LTW4lZUzY9hhtlPvlLLAwwXqHSCBlcvuuwjGaqyqeytjtHuNAJLx
         QyZ8QTdaKvhGCorECBycPs4wX0xLqi4YTGgF0f6VUF5bplo8XdvWAiTjO9ak0oli4fEt
         3kiKOg9YfCTmDvoj7fHjTnJqfrWLsiQvupQuXl0mC/31hN7dODckCZ6jUr+PP4NylKhK
         QNj+zIbypqaN/+7iaxcsDcVPJZOk6hg6pzeBjsk7ESfyXnOfMXZW2UJ6u14PtvpIrLrS
         HV1Q==
X-Gm-Message-State: AFeK/H2PhWOmyNfsmCsTHErHMCSvffWG/TJIVk2BSh8oEJ8kKgVbc0z/hGzy4+CBSm97ng==
X-Received: by 10.28.133.84 with SMTP id h81mr10388253wmd.23.1490023998960;
        Mon, 20 Mar 2017 08:33:18 -0700 (PDT)
Message-ID: <1490023997.1783.5.camel@gmail.com>
From: Ailin Nemui <ailin.nemui@gmail.com>
To: oss-security@lists.openwall.com
Date: Mon, 20 Mar 2017 16:33:17 +0100
In-Reply-To: <1489267555.30133.7.camel@gmail.com>
References: <1489267555.30133.7.camel@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.22.5 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Subject: [oss-security] Re: CVE Request: Irssi use after free in netjoin condition (2017/03)

On Sat, 2017-03-11 at 22:25 +0100, Ailin Nemui wrote:
> Dear CVE Assignment Team,
> 
> please provide CVE for the following issue:
> 
> use after free condition during netjoin processing [1]
> ======================================================

-------- Forwarded Message --------
From: cve-request@mitre.org
Subject: Re: [scr308011] Irssi - 1.0.0, 1.0.1
Date: Mon, 20 Mar 2017 09:14:07 -0400

Use CVE-2017-7191.


-- 
CVE Assignment Team
M/S M300, 202 Burlington Road, Bedford, MA 01730 USA
[ A PGP key is available for encrypted communications at
  http://cve.mitre.org/cve/request_id.html ]


> [1] https://irssi.org/security/irssi_sa_2017_03.txt

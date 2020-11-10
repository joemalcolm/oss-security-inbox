X-VM-v5-Data: ([nil t nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	["847" "Tuesday" "10" "November" "2020" "13:11:24" "+0000" "Kaxil Naik" "kaxilnaik@gmail.com" "<CAH5JyZqaxXZGfSivNw-SMdCzY-x2nf2j_VWuC9=f5vOyRxnwow@mail.gmail.com>" "27" "[oss-security] [CVE-2020-13927] - Insecure Default Configuration for Experimental API in Airflow < 1.10.11" nil nil nil "11" "2020111013:11:24" "[oss-security] [CVE-2020-13927] - Insecure Default Configuration for Experimental API in Airflow < 1.10.11" (number mark "U       kaxilnaik@gm Nov 10   27/847   " thread-indent "\"[oss-security] [CVE-2020-13927] - Insecure Default Configuration for Experimental API in Airflow < 1.10.11\"\n") nil nil nil nil nil nil nil nil nil "[oss-security] [CVE-2020-13927] - Insecure Default Configuration for Experimental API in Airflow < 1.10.11" nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil nil]
	nil)
X-Mozilla-Status: 0000
X-Mozilla-Status2: 00000000
Received: (qmail 23591 invoked by uid 550); 10 Nov 2020 14:12:39 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 27671 invoked from network); 10 Nov 2020 13:11:46 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=nQQN/Etg6YEnAxae7xm+tyfraDwFOLW4OPrnu1f5KxM=;
        b=rXW2WS21LUZkzilxjM6ZZuG4zfsYzxelCAo34DOa4Jaci3p6h75NrZCv7lG45JNAn1
         /yDr4gItm5PhBwCVY/Xwxx1xvurz9VNoC6Es8arVhwvsnt+U3vOJIyFUQwvPtOGO/NEO
         eukhuNGw/iNxOLUkXysOjk7mPM3przywmRxQEpDEoEQZOFC4Vel2OI4vgRPLrUnW3pYx
         9aU8V0odTM0IAPhzM3LsFDBNNQA8iRur4SWZQIysfEyfhqRsAKYA6SuVmdCKwsZ4Xk9c
         Jiucmto8wlXkpkNloR2RUjpQjmjeN1Qq5qVxltaKtEJKVuj1nWtkGIXyhUGoPLckG/l6
         W0sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=nQQN/Etg6YEnAxae7xm+tyfraDwFOLW4OPrnu1f5KxM=;
        b=mH5ET5LMmDsyfahpRqQywe7cgnhb6M4Rv++QSHUzkPtakztzDUDEAxdTZvdVuVhc0j
         j2OOpvvT/rCOgIFki3cohqSRkKXkUNIC1zghQFur18BADjX4Fe3GZNDc2HlcYwAcuDQo
         iq4VeBseQNB2O5VP1//KYcuQ7dYnTxphXahqrRdGbi1xzx+6B3fgXDyKjO5ny3e+Svwl
         YOsc0tO/OlR/eLT8j27s13plQ2NgEh2ui/+pBo9sfUghV4Pk1Ta1vviQPx0YJazO+Fug
         LN/gxeuYWxFHRMo7uNof/jXTuXgBmLFQbHMVr+rUVkzTD52rhbTCuy9YoX9bgvz4uqvc
         yxFQ==
X-Gm-Message-State: AOAM531Zzq9Lq7/+zDJ9CeFG59meuebF5YsQOU6dKhhT2KcM2daCxd6t
	wS+bFbQaJNQ5afGCHDVW6KrkYewsH86zGxX8oJ+gDwQx8rVfXg==
X-Google-Smtp-Source: ABdhPJzpOwa6ehZaXXCmR5k61/URIr6Zgi0UvC11uex9r0DkmgKEJvzepRkuIfv89yKUaJJad7rWp4cLeHyiwdAYURE=
X-Received: by 2002:a17:906:5c43:: with SMTP id c3mr4190104ejr.390.1605013894828;
 Tue, 10 Nov 2020 05:11:34 -0800 (PST)
MIME-Version: 1.0
From: Kaxil Naik <kaxilnaik@gmail.com>
Date: Tue, 10 Nov 2020 13:11:24 +0000
Message-ID: <CAH5JyZqaxXZGfSivNw-SMdCzY-x2nf2j_VWuC9=f5vOyRxnwow@mail.gmail.com>
To: oss-security@lists.openwall.com
Cc: dev@airflow.apache.org
Content-Type: multipart/alternative; boundary="0000000000000f966805b3c06bbb"
Subject: [oss-security] [CVE-2020-13927] - Insecure Default Configuration for Experimental
 API in Airflow < 1.10.11

--0000000000000f966805b3c06bbb
Content-Type: text/plain; charset="UTF-8"

Versions Affected: <1.10.11

Description:
The previous default setting for Airflow's Experimental API was to allow
all API requests without authentication, but this
poses security risks to users who miss this fact.


>From Airflow 1.10.11 the default has been changed to deny all
requests by default and is documented at
https://airflow.apache.org/docs/1.10.11/security.html#api-authentication .

Note this change fixes it for new installs but existing users need to
change their config to default
`[api] auth_backend = airflow.api.auth.backend.deny_all` as mentioned in
the Updating Guide:

https://github.com/apache/airflow/blob/1.10.11/UPDATING.md#experimental-api-will-deny-all-request-by-default


Credits:
Reported by Anonymous User

--0000000000000f966805b3c06bbb--

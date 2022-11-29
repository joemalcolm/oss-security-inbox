Received: (qmail 26573 invoked by uid 550); 29 Nov 2022 12:38:11 -0000
Mailing-List: contact oss-security-help@lists.openwall.com; run by ezmlm
Precedence: bulk
List-Post: <mailto:oss-security@lists.openwall.com>
List-Help: <mailto:oss-security-help@lists.openwall.com>
List-Unsubscribe: <mailto:oss-security-unsubscribe@lists.openwall.com>
List-Subscribe: <mailto:oss-security-subscribe@lists.openwall.com>
List-ID: <oss-security.lists.openwall.com>
Reply-To: oss-security@lists.openwall.com
Received: (qmail 11887 invoked from network); 29 Nov 2022 12:23:12 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=prometheus-io.20210112.gappssmtp.com; s=20210112;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KuS8xxygLnzBAd3yNkd/d572XQ53LWjzthzBZJw3VhQ=;
        b=OsilJ1LMP7D5zMO4Qhduyrrut1+NR0fQ5f2Nt3tYWlxaxREtSi1BrXILIJE7hKKCKi
         JaEdJsYAh7llWrGKkcHBOrhkAJk3y7LNd/0Osw4Rcqeg32uz9YS69YsqzB2Sevt9N749
         2vzLKc6Oiy7AggTWu7ekltm1XQDZiBZ3/bPHdy5Ky7Nj12hcrw4LWiuGBA8pXPBjHQIq
         QMOu7ieAytYL/s8wgSpfkUbU0R7XLPMOH4uPzZ+TIqigmH94J6jOkcfmn0/9N/dpvAz6
         rMuBj8H/1KDwPVbOQcov+eJEpv5LTasFhvfNNleIxC7E3lG1X15DzD0WGjQgzftqIEfL
         Huzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=user-agent:content-disposition:mime-version:message-id:subject:to
         :from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KuS8xxygLnzBAd3yNkd/d572XQ53LWjzthzBZJw3VhQ=;
        b=Lj2BpcrVurTOO7Qt2dp7YQwi/kTkWSxRrlhVNEeU5/kfzxJffPstABub6nI64GUfhr
         Dv8jzWBs07adTOZ4UOlKVwEFApyLKTWqEG1acrnAgeShXUEwTTOgggVUjqlcHdVaBYNG
         ss5fx5RzWairuO1erVqujV03zGmvwpmegfhyqO7pABuRzR5h+DxxcHIxsHsLLkgoAd9F
         mpn8+HyFuWazQhWXblKmi2TB50Yif0bF9jRTznwY0MBqghwa+i8nwX9P8jApSjhKoOe+
         u/3Tvw15c84KOQLPWoAjBOTTO0+vj4FMGASXt+yK3W3iFsunh5Pg9cQyVr4cAJj2Nuth
         jufA==
X-Gm-Message-State: ANoB5pnnfrzOsFqdH11TL4R22QSKuixMeIE5HFwuVMVO5Up44d/j/2JF
	7bwIzOkWDOypupBNU054rM6AkFVsTBTxQQ==
X-Google-Smtp-Source: AA0mqf5OVgXe+fMQXaStOs4YZ3WHDAdBZZhaM6fTcPE+gneoUBtLrznfafBB3Z5fslPWKcRlbDODtQ==
X-Received: by 2002:adf:f7c8:0:b0:236:720a:e391 with SMTP id a8-20020adff7c8000000b00236720ae391mr27415926wrq.368.1669724580376;
        Tue, 29 Nov 2022 04:23:00 -0800 (PST)
Date: Tue, 29 Nov 2022 13:22:58 +0100
From: Julien Pivotto <roidelapluie@prometheus.io>
To: oss-security@lists.openwall.com
Message-ID: <Y4X5opwfosliZ7+N@nixos>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.12.2 (2019-09-21)
Subject: [oss-security] CVE-2022-46146 in Prometheus' exporter toolkit: bypass basic
 authentication

Hello everyone,

The exporter toolkit is a go library intended at Prometheus exporters.
It provides some features that are useful for Prometheus exporters,
which work by exposing HTTP servers to be exposed by the Prometheus
server.

One of those features is basic authentication. To achieve this,
Prometheus requires you to store a bcrypt hash into a file, web.yml.

While bcrypt is fine, it takes by design a lot of time and resources to
compare a password with a hash. To limit this impact, we have a built-in
cache that caches the good and bad answers.

Once a request comes, we check it against the cache and decide whether
to allow the request. We also check that the user is valid. However, the
key for that cache is predictable:

hex(username + hashed password + input password)

If you know the bcrypted password, you can poison the cache and use that
cached positive value in a subsequent query:

Request 1:

username = username+hashed password
password = "fakepassword"

Request 2:

username = username
password = bcrypt(fakepassword)+"fakepassword"

"fakepassword" is used as bcrypted password when a user does not exist.

The fact that we save unhappy tentatives and that we validate
non-existing users against "fakepassword" is to prevent side channel
attacks that could reveal if a user exists in a system or not.

Prometheus 2.37.4 and 2.40.4 are out, with this fix. We recommend all
the exporters that depend on the repository to upgrade.

CVE-2022-46146 was assigned to this security report in our exporter
toolkit:
https://github.com/prometheus/exporter-toolkit/security/advisories/GHSA-7rg2-cxvp-9p7p

We would like to thank Lei Wan for the responsible disclosure of this
bug.

Best regards,

-- 
Julien Pivotto
@roidelapluie

# coding: utf-8

0.upto(9) do |idx|
  Article.create(title:"練習試合の結果#{idx}",
		 body:"bodyの中身",
		 released_at: 8.days.ago.advance(days: idx),
		 expired_at: 2.days.ago.advance(days: idx),
		 member_only: (idx % 3 == 0)
		)
end

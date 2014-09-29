#coding: utf-8

class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.integer :number , null: false	#背番号
      t.string :name, null: false	#ニックネーム
      t.string :full_name		#本名
      t.string :email			#メアド
      t.date :birthday			#誕生日
      t.integer :gender , null: false, default: 0 #（性別（０：男,１:女））
      t.boolean :administrator , null: false , default: false # 管理者フラグ
      t.timestamps
    end
  end
end

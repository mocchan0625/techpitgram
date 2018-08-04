class PagesController < ApplicationController
  def home
    if !user_signed_in? #もしユーザーがsign_inしていなければ
      redirect_to new_user_session_path #新規登録ページにログインページにリダイレクト
    end
  end
end

package models.validators;

import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import models.Report;

public class ReportValidator {
    public static List<String> validate(Report r) {
        List<String> errors = new ArrayList<String>();

        String title_error = _validateTitle(r.getTitle());
        if(!title_error.equals("")) {
            errors.add(title_error);
        }

        String content_error = _validateContent(r.getContent());
        if(!content_error.equals("")) {
            errors.add(content_error);
        }

        String start_time_error = _validateStartTime(r.getStart_time());
        if(!start_time_error.equals("")) {
            errors.add(start_time_error);
        }


        String end_time_error = _validateEndTime(r.getEnd_time());
        if(!end_time_error.equals("")) {
            errors.add(end_time_error);
        }

        String progress_error = _validateProgress(r.getProgress());
        if(!progress_error.equals("")) {
            errors.add(progress_error);
        }

        String project_name_error = _validateProjectName(r.getProject_name());
        if(!project_name_error.equals("")) {
            errors.add(project_name_error);
        }

        return errors;
    }



    private static String _validateTitle(String title) {
        if(title == null || title.equals("")) {
            return "タイトルを入力してください。";
            }

        return "";
    }

    private static String _validateContent(String content) {
        if(content == null || content.equals("")) {
            return "内容を入力してください。";
            }

        return "";
    }


    private static String _validateProgress(Integer progress) {
        if(progress == null || progress.equals("")) {
            return "進捗を入力してください。";
            }
        return "";
    }

    private static String _validateProjectName(String project_name) {
        if(project_name == null || project_name.equals("")) {
            return "プロジェクト名を入力してください。";
            }
        return "";
    }

    private static String _validateStartTime(Time start_time) {
        if(start_time == null || start_time.equals("")) {
            return "始業時間を入力してください。";
            }
        return "";
    }

    private static String _validateEndTime(Time end_time) {
        if(end_time == null || end_time.equals("")) {
            return "終業時間を入力してください。";
            }
        return "";
    }

}
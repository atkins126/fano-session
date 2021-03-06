(*!------------------------------------------------------------
 * [[APP_NAME]] ([[APP_URL]])
 *
 * @link      [[APP_REPOSITORY_URL]]
 * @copyright Copyright (c) [[COPYRIGHT_YEAR]] [[COPYRIGHT_HOLDER]]
 * @license   [[LICENSE_URL]] ([[LICENSE]])
 *------------------------------------------------------------- *)
unit SignInViewFactory;

interface

{$MODE OBJFPC}
{$H+}

uses
    fano;

type

    (*!-----------------------------------------------
     * Factory for view TSignInView
     *
     * @author [[AUTHOR_NAME]] <[[AUTHOR_EMAIL]]>
     *------------------------------------------------*)
    TSignInViewFactory = class(TFactory)
    public
        function build(const container : IDependencyContainer) : IDependency; override;
    end;

implementation

uses

    SysUtils

    {*! -------------------------------
        unit interfaces
    ----------------------------------- *};

    function TSignInViewFactory.build(const container : IDependencyContainer) : IDependency;
    begin
        result := TTemplateView.create(
            'resources/Templates/SignIn/index.html',
            TSimpleTemplateParser.create('{{', '}}'),
            TStringFileReader.create()
        );
    end;
end.
